package isijia

import grails.plugin.springsecurity.annotation.Secured

@Secured(['ROLE_USER', 'ROLE_CHEF'])
class MenuController {
    def springSecurityService
    def menuService
    def chefService

    def index() {
        render(view: '/test/menu')
    }

    @Secured(['ROLE_CHEF'])
    def createFood(String name, int price, String description, String status, String closeDate, boolean highLight) {
        def result
        try {
            def webrootDir = servletContext.getRealPath("/") //app directory

            def image = request.getFile("foodImage")
            String fileName = null
            if (image) {
                def milSecond = System.currentTimeMillis()
                def chef = springSecurityService.currentUser
                fileName = "images/food/${chef.id}/${milSecond}.png"
                File file = new File(webrootDir, fileName)
                if (!file.exists()) {
                    file.mkdirs()
                }

                image.transferTo(file)
            }

            result = menuService.createFood(name, price, description, status, closeDate, highLight, fileName)

        } catch (Exception e) {
            e.printStackTrace()
            result = [success: false, message: "Erorr on uploading image null error: ${e.message}"]
        }

        render result
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
