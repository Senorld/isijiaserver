package isijia

import grails.plugin.springsecurity.annotation.Secured

@Secured(['ROLE_USER', 'ROLE_CHEF'])
class MemberOrderController {
    def springSecurityService
    def memberOrderService

    def index(){
        def list = Menu.list()
        render(view: "/test/menuOrder", model: [foodList: list])
    }

    def retrieveList(){
        def orderList = MemberOrder.list()

        render(view: "/test/orderList", model: [orderList: orderList])
    }

    def retrieveListByUser(){
        def user = springSecurityService.currentUser

        def orderList = MemberOrder.findAllByUser(user)

        render(view: "/test/orderList", model: [orderList: orderList])

    }

    def retrieveOrderHistoryTemplate(int offset){
        def user = springSecurityService.currentUser
        def userRoles = springSecurityService.getPrincipal().getAuthorities()

        def orderHistory
        if(userRoles.any{ it.authority == "ROLE_USER"}){
            orderHistory = memberOrderService.retrieveOrderByUser(user, offset)
        }else{
            orderHistory = memberOrderService.retrieveOrderByChef(user, offset)
        }

        render(template: "/template/order_history", model: [orderHistory: orderHistory])
    }

    def checkoutPage(long dishId){
        def dish = Menu.get(dishId)
        def user = springSecurityService.currentUser

        render(view: "/food/order_page", model: [dish: dish, user: user])
    }

    def checkout(long dishId, String phoneNumber, String wechat, String deliverOption, int amount, String address, String city, String zipCode, String note){

        def result = memberOrderService.checkout(dishId, phoneNumber, wechat, deliverOption, amount, address, city, zipCode, note)

        redirect(controller: 'user', action: 'personalPage')
    }

    def confirmOrder(long orderId){
        def result = memberOrderService.confirmOrder(orderId)

        redirect(controller: 'user', action: 'personalPage')
    }

    def successOrder(long orderId){
        def result = memberOrderService.successOrder(orderId)

        redirect(controller: 'user', action: 'personalPage')
    }

    def reviewOrder(){
        List<Long> foodId= params.foodId.toList()
        def foodList = memberOrderService.retrieveFoodDetail(foodId)

        int totalPrice = 0
        foodList.each(){
            totalPrice += it.price
        }

        render(view: "/test/reviewOrder", model: [foodList: foodList, totalPrice: totalPrice])
    }

/*    def retrieveOrderByChef(long chefId){
        def result = memberOrderService.retrieveOrderByChef(chefId)

        render(view: "/test/orderList", model: [orderList: result])
    }*/

    def updateStatus(long orderId, String status){
        def result = memberOrderService.updateStatus(orderId, status)

        render result
    }
}
