package isijia

import grails.plugin.springsecurity.annotation.Secured

@Secured(['permitAll'])
class MenuController {
    def springSecurityService
    def menuService
    def chefService

    def index() {
        render(view: '/test/menu')
    }

    @Secured(['ROLE_CHEF'])
    def createFood(String name, int price, String description, String shortDescription, String status, String closeDate, boolean highLight) {
        def result
        try {
            def webrootDir = servletContext.getRealPath("/") //app directory
            def image = request.getFile("foodImage")
            String fileName = null
            if (image) {
                def milSecond = System.currentTimeMillis()
                def chef = springSecurityService.currentUser
                fileName = "dish_${milSecond}.png"
                String filePath = "images/dish/${chef.id}/${fileName}"
                File file = new File(webrootDir, filePath)
                if (!file.exists()) {
                    file.mkdirs()
                }

                image.transferTo(file)
            }

            result = menuService.createFood(name, price, description, shortDescription, status, closeDate, highLight, fileName)

        } catch (Exception e) {
            e.printStackTrace()
            result = [success: false, message: "Erorr on uploading image null error: ${e.message}"]
        }

        render result
    }

    def dishDetail(long dishId){
        def dish = Menu.get(dishId)

        render(view: "/dish_detail", model: [dishDetail: dish])
    }

    def foodSearch(String keyWord){
        def result = menuService.searchFood(keyWord)

        render(view: "/test/menuList", model: [menuList: result])
    }

    def retrieveList(){
        def menu = Menu.findAll()
        render(view: '/test/menuList', model: [menuList: menu])
    }

    def retrieveFoodByChef(long chefId){
        def result = chefService.retrieveFoodByChef(chefId)

        render(view: "/test/menuList", model: [menuList: result])
    }
}
