package isijia

import grails.transaction.Transactional

@Transactional
class ChefService {

    def retrieveFoodByChef(long chefId){
        def chef = Member.get(chefId)
        if(!MemberRole.findByMemberAndRole(chef, Role.findByAuthority("ROLE_CHEF"))){
            log.error("Error on retrieveFoodByChef, The chef is not chef")
            return null
        }

        def foodList = Menu.findAllByChef(chef)

        return foodList
    }
}
