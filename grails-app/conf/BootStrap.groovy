import isijia.Member
import isijia.MemberRole
import isijia.Role

class BootStrap {

    def init = { servletContext ->
        def adminRole = new Role(authority: 'ROLE_ADMIN').save(flush: true)
        new Role(authority: 'ROLE_USER').save(flush: true)
        new Role(authority: 'ROLE_CHEF').save(flush: true)

        def testUser = new Member(email: 'admin', password: 'admin', name: "Jay Chen").save(flush: true)
        new MemberRole(role: adminRole, member: testUser).save()

    }
    def destroy = {
    }
}
