package isijia

import grails.plugin.springsecurity.annotation.Secured

//@Secured(['ROLE_USER', 'ROLE_CHEF', 'ROLE_ADMIN'])
@Secured(['permitAll'])
class UserController {
    def springSecurityService

    def index(){
        render (view: '/user');
    }

    def retrieveList(){
        def members = Member.findAll()
        render (view: '/test/userList', model: [userList: members]);
    }


}
