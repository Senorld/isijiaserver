package isijia

import grails.transaction.Transactional

@Transactional
class ChefService {
    def springSecurityService

    def retrieveFoodByChef(long chefId){
        def chef = Member.get(chefId)
        def result = retrieveFoodByChef(chef)
        return [foodList: result.foodList, pages: result.pages]
    }

    def retrieveFoodByChef(Member chef, int offset = 0){
        int limit = 15
        if(!MemberRole.findByMemberAndRole(chef, Role.findByAuthority("ROLE_CHEF"))){
            log.error("Error on retrieveFoodByChef, The chef is not chef")
            return null
        }

        def foodList = Menu.findAllByChefAndStatus(chef, MenuStatus.ACTIVE, [sort: 'createdDate', order: 'desc', offset: offset ?: 0, max: limit ?: -1])
        def pages = Menu.countByChefAndStatus(chef, MenuStatus.ACTIVE)/limit as Integer

        return [foodList: foodList, pages: pages]
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

    def getHotChef(){
        def chef = MemberRole.findAllByRole(Role.findByAuthority("ROLE_CHEF")).member.sort({ -it.visit })


        def hotChef = chef.subList(0, chef.size() > 5 ? 5 : chef.size())

        return hotChef
    }
}
