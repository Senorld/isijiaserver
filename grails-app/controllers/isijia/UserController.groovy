package isijia

import grails.plugin.springsecurity.annotation.Secured

@Secured(['ROLE_USER', 'ROLE_CHEF', 'ROLE_ADMIN'])
class UserController {
    def springSecurityService
    def retrieveList(){
        def members = Member.findAll()
        render (view: '/test/userList', model: [userList: members]);
    }


}
