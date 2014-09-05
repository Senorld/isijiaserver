package isijia

import grails.transaction.Transactional

@Transactional
class ChefService {
    def springSecurityService

    def retrieveFoodByChef(long chefId){
        def chef = Member.get(chefId)
        if(!MemberRole.findByMemberAndRole(chef, Role.findByAuthority("ROLE_CHEF"))){
            log.error("Error on retrieveFoodByChef, The chef is not chef")
            return null
        }

        def foodList = Menu.findAllByChef(chef)

        return foodList
    }

    def postFeed(String message, int chefId, int rate){
        def user = springSecurityService.currentUser as Member
        def userRoles = springSecurityService.getPrincipal().getAuthorities()

        if(userRoles.any{ it.authority == "ROLE_CHEF"}){
            return [success: false, message: "Chef doesn't have right to rate other chef."]
        }

        def chef = Member.get(chefId)
        if(!chef || !MemberRole.findByMemberAndRole(chef, Role.findByAuthority("ROLE_CHEF"))){
            return [success: false, message: "Can't fine the Chef"]
        }

        def feed = new ChefFeed(chef: chef, user: user, message: message, rate: rate).save(failOnError: true)

        if(!feed){
            return [success: false, message: "Error on server, please try again later."]
        }

        return [success: true]
    }

    def retrieveFeed(long chefId){
        def chef = Member.get(chefId)

        if(!chef || !MemberRole.findByMemberAndRole(chef, Role.findByAuthority("ROLE_CHEF"))){
            return [success: false, message: "Can't fine the Chef"]
        }

        def feedList = ChefFeed.findAllByChef(chef)

        return feedList

    }
}
