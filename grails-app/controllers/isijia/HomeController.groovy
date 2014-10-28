package isijia

class HomeController {
    def springSecurityService
    def menuService
    def chefService

    def index() {
        def member = null
        if(springSecurityService.isLoggedIn()){
            member = Member.get(springSecurityService.principal.id)
        }

        //retrieve hot dish
        def hotDishList = menuService.hotDish(6)
        def newDishList = Menu.list([max: 4, sort: 'createdDate', order: 'desc'])

        render(view: "/index", model: [user: member, hotDishList: hotDishList, hotChef: chefService.getHotChef(), newDishList: newDishList])
    }
}
