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

    def checkout(){
        List<Long> foodId= params.foodId.toList()
        def result = memberOrderService.checkout(foodId)

        render result
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

    def retrieveOrderByChef(long chefId){
        def result = memberOrderService.retrieveOrderByChef(chefId)

        render(view: "/test/orderList", model: [orderList: result])
    }

    def updateStatus(long orderId, String status){
        def result = memberOrderService.updateStatus(orderId, status)

        render result
    }
}
