package isijia

import grails.transaction.Transactional

@Transactional
class UserService {
    def springSecurityService
    def chefService
    def memberOrderService

    def personalPage(def user, int offset){
        def userRoles = springSecurityService.getPrincipal().getAuthorities()
        def chefFoods = [:]
        println userRoles
        println user
        if(userRoles.any{ it.authority == "ROLE_CHEF"}){
            chefFoods = chefService.retrieveFoodByChef(user, offset)
            def menuList = Menu.findAllByChef(user)
            def orderCount = 0
            def orderCountUnique = 0
            if(menuList){
                orderCount = MemberOrder.countByMenuInList(menuList)
                def c = MemberOrder.createCriteria()
                orderCountUnique = c.count(){
                    'in'('menu', menuList)
                }
            }


            return[success: true, dishList: chefFoods?.foodList, pages: chefFoods?.pages, orderCount: orderCount, orderCountUnique: orderCountUnique]
        }else{
            def orderHistory = memberOrderService.retrieveOrderByUser(user, 0)
            return[success: true, orderHistory: orderHistory]
        }





    }
}
