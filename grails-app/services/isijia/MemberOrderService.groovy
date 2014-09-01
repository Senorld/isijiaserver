package isijia

import grails.transaction.Transactional

@Transactional
class MemberOrderService {
    def springSecurityService

    def checkout(List<Long> foodIdList){

        if(!foodIdList || foodIdList.size() == 0){
            return [success: false, message: "The Food List is null"]
        }

        def food = Menu.findAllByIdInList(foodIdList)
        def user = springSecurityService.currentUser

        if(!food || !user){
            return [success: false, message: "Can't find food or user"]
        }

        def order = new MemberOrder(menu: food, user: user, lastChangDate: new Date()).save(failOnError: true)

        if(!order){
            return [success: false, message: "Something wrong when saving into database, please try again later."]
        }

        return [success: true]
    }

    def retrieveFoodDetail(List<Long> foodIdList){
        if(!foodIdList || foodIdList.size() == 0){
            return [success: false, message: "The Food List is null"]
        }

        def food = Menu.findAllByIdInList(foodIdList)

        if(!food){
            return [success: false, message: "Can't find food or user"]
        }

        return food
    }

    def retrieveOrderByChef(long chefId, String status = "PENDING"){
        def chef = Member.get(chefId)

        if(!MemberRole.findByMemberAndRole(chef, Role.findByAuthority("ROLE_CHEF"))){
            log.error("Error on retrieveFoodByChef, The chef is not chef")
            return null
        }

        def chefMenu = Menu.findAllByChef(chef)
        def orderList = MemberOrder.all.findAll{it.menu.containsAll(chefMenu)}

        return orderList
    }

    def updateStatus(long orderId, String status){
        def updateStatus = status as OrderStatus

        def order = MemberOrder.get(orderId)
        if(!order){
            return [success: false, message: "Cannot find the Order"]
        }

        order.status = updateStatus

        return [success: true]
    }
}
