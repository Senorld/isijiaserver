package isijia

class HomeController {
    def springSecurityService

    def index() {
        def member = null
        if(springSecurityService.isLoggedIn()){
            member = Member.get(springSecurityService.principal.id)
        }


        render(view: "/index", model: [user: member])
    }
}
