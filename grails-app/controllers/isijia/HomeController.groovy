package isijia

class HomeController {
    def springSecurityService
    def menuService

    def index() {
        def member = null
        if(springSecurityService.isLoggedIn()){
            member = Member.get(springSecurityService.principal.id)
        }

        //retrieve hot dish
        def hotDishList = menuService.hotDish(6)
        render(view: "/index", model: [user: member, hotDishList: hotDishList])
    }
}
