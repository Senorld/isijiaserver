package isijia

import grails.transaction.Transactional

@Transactional
class MemberOrderService {
    def springSecurityService

    def checkout(long dishId, String phoneNumber, String wechat, String deliverOption, int amount, String address, String city, String zipCode, String note){

        if(!dishId){
            return [success: false, message: "The Food List is null"]
        }

        def food = Menu.findByStatusAndId(MenuStatus.ACTIVE, dishId)
        def user = springSecurityService.currentUser

        if(!food || !user){
            return [success: false, message: "Can't find food or user"]
        }

        def order = new MemberOrder(menu: food, user: user, phoneNumber: phoneNumber, wechat: wechat, shipOption: deliverOption, amount: amount, address: address, city: city, zipCode: zipCode, note: note, lastChangDate: new Date()).save(failOnError: true)

        if(!order){
            return [success: false, message: "Something wrong when saving into database, please try again later."]
        }
        food.likes++

        def member = Member.findByEmail(user.email)
        if(!member?.address){
            member.address = address
            member.phoneNumber = phoneNumber
            member.city = city
            member.zipCode = zipCode
        }

        return [success: true]
    }

/*    def retrieveFoodDetail(long dishId){
        if(!foodIdList){
            return [success: false, message: "The Food List is null"]
        }

        def food = Menu.findAllByStatusAndIdInList(MenuStatus.ACTIVE, foodIdList)

        if(!food){
            return [success: false, message: "Can't find food or user"]
        }

        return food
    }*/

    def retrieveOrderByUser(Member user, int offset, String status = 'PENDING'){
        def orderList = MemberOrder.findAllByUser(user, [sort: "lastChangDate", order: 'desc', offset: offset ?: 0, max: 15])
        //def orderList = MemberOrder.all.findAll{it.menu.containsAll(chefMenu)}

        return orderList
    }

    def retrieveOrderByChef(Member chef, int offset, String status = "PENDING"){

        if(!MemberRole.findByMemberAndRole(chef, Role.findByAuthority("ROLE_CHEF"))){
            log.error("Error on retrieveFoodByChef, The chef is not chef")
            return null
        }

        def chefMenu = Menu.findAllByChef(chef)
        def orderList = MemberOrder.findAllByMenuInList(chefMenu, [sort: "lastChangDate", order: 'desc', offset: offset ?: 0, max: 15])
        //def orderList = MemberOrder.all.findAll{it.menu.containsAll(chefMenu)}

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

    def confirmOrder(long orderId){
        def order = MemberOrder.get(orderId)
        if(!order){
            return [success: false, message: "can't find the order"]
        }

        order.status = OrderStatus.CONFIRMED

        return [success: true]
    }

    def successOrder(long orderId){
        def order = MemberOrder.get(orderId)
        if(!order){
            return [success: false, message: "can't find the order"]
        }

        order.status = OrderStatus.SUCCESS

        return [success: true]
    }
}
