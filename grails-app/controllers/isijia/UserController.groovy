package isijia

import grails.plugin.springsecurity.annotation.Secured

//@Secured(['ROLE_USER', 'ROLE_CHEF', 'ROLE_ADMIN'])
@Secured(['permitAll'])
class UserController {
    def springSecurityService
    def memberOrderService

    def index(){
        render (view: '/user');
    }

    def retrieveList(){
        def members = Member.findAll()
        render (view: '/test/userList', model: [userList: members]);
    }

    @Secured(['ROLE_USER', 'ROLE_CHEF'])
    def personalHomePage(){
        def user = springSecurityService.currentUser as Member
        def orderList = memberOrderService.retrieveOrderByUser(user)
        render(view: '/user', model: [user: user, orderList: orderList])
    }


}
