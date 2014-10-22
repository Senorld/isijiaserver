package isijia

import grails.plugin.springsecurity.annotation.Secured

@Secured(['permitAll'])
class MenuController {
    def springSecurityService
    def menuService
    def chefService
    def ftpService

    def index() {
        render(view: '/test/menu')
    }

    @Secured(['ROLE_CHEF'])
    def createFood(String name, float price, String description, String shortDescription, String dishFlavor, boolean highLight) {
        def result
        try {
            def image = params.foodImage
            String fileName = null
            println image
            if (image) {
                def milSecond = System.currentTimeMillis()
                def chef = springSecurityService.currentUser
                fileName = "dish_${milSecond}.png"
                String filePath = "dish/${chef.id}"
                ftpService.save(image.getBytes(), fileName, filePath)
                fileName = "userUpload/$filePath/$fileName"
            }


            result = menuService.createFood(name, price, description, shortDescription, dishFlavor, highLight, fileName)

        } catch (Exception e) {
            e.printStackTrace()
            result = [success: false, message: "Erorr on uploading image null error: ${e.message}"]
        }

        if(result.success){
            dishDetail(result?.dish?.id)
        }else{
            dishCreationPage()
        }
    }

    @Secured(['ROLE_CHEF'])
    def dishCreationPage(){
        def user = springSecurityService.currentUser

        render(view: "/food/create_dish", model: [user: user])
    }

    def dishDetail(long dishId){
        def dish = Menu.get(dishId)

        dish.visit++
        def relatedDish = []
        if(dish){
            relatedDish = menuService.getRelatedDish(dish.chef, dish)
        }
        def user = springSecurityService.currentUser
        render(view: "/food/dish_detail", model: [dishDetail: dish, relatedDish: relatedDish, user: user])
    }

    def foodSearch(String keyWord, int offset){
        def result = menuService.searchFood(keyWord, offset)
        def user = springSecurityService.currentUser

        render(view: "/food/dish_list", model: [resultList: result.resultList, pages: result.pages, limit: result.limit, user: user, params: params])
    }

    def list(){
        def menu = Menu.list([sort: "visit"])
       // render(view: '/test/menuList', model: [menuList: menu])
        def user = springSecurityService.currentUser
        render(view:'/food/dish_list', model: [dishList: menu, user: user])
    }

    def retrieveFoodByChef(long chefId){
        def result = chefService.retrieveFoodByChef(chefId)
        def user = springSecurityService.currentUser
        render(view: "/test/menuList", model: [menuList: result, user: user])
    }

    def hotDish(int limit){
        def hotDishList = menuService.hotDish(limit)

        render hotDishList
    }

    @Secured(['ROLE_CHEF', 'ROLE_USER'])
    def likeMenu(long menuId){
        def result = menuService.likeMenu(menuId)
        render result
    }
}
