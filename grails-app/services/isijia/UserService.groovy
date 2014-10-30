package isijia

import grails.transaction.Transactional

@Transactional
class UserService {
    def springSecurityService
    def chefService
    def ftpService
    def memberOrderService

    def personalPage(def user, int offset){
        def userRoles = springSecurityService.getPrincipal().getAuthorities()
        def chefFoods = [:]
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

    def updateInfo(Member user, String email, String password, String name, String phoneNumber, String address, String city, String state, String zipCode, def profile){

        user.email = email ?: user.email
        if(password){
            user.password = password
        }

        user.name = name ?: user.name
        user.phoneNumber = phoneNumber ?: user.phoneNumber
        user.address = address ?: user.address
        user.city = city ?: user.city
        user.state = state ?: user.state
        user.zipCode = zipCode ?: user.zipCode

        if (profile) {
            String fileName = "profile_image.png"
            String filePath = "user/${user.id}"
            ftpService.save(profile.getBytes(), fileName, filePath)
            fileName = "userUpload/$filePath/$fileName"
            user.profile = fileName
        }

        user.save(failOnError: true)


    }
}
