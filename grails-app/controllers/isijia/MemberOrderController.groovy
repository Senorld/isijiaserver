package isijia

import grails.plugin.springsecurity.annotation.Secured

@Secured(['ROLE_USER', 'ROLE_CHEF'])
class MemberOrderController {
    def springSecurityService

    def orderFood(){

    }
}
