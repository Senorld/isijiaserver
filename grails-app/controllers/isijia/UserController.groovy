package isijia

import grails.plugin.springsecurity.annotation.Secured

//@Secured(['ROLE_USER', 'ROLE_CHEF', 'ROLE_ADMIN'])
@Secured(['permitAll'])
class UserController {
    def springSecurityService
    def memberOrderService
    def userService

    def index(){
        render (view: '/user');
    }

    def retrieveList(){
        def members = Member.findAll()
        render (view: '/test/userList', model: [userList: members]);
    }

    @Secured(['ROLE_USER', 'ROLE_CHEF'])
    def personalHomePage(int offset){
        def user = springSecurityService.currentUser as Member
        def orderList = memberOrderService.retrieveOrderByUser(user, offset)
        render(view: '/user', model: [user: user, orderList: orderList])
    }

    @Secured(['ROLE_USER', 'ROLE_CHEF'])
    def personalPage(int offset){
        def user = springSecurityService.currentUser as Member
        def result = userService.personalPage(user, offset)

        render(view: '/user/personalPage', model: [user: user, data: result, orderHistory: result?.orderHistory])
    }


}
