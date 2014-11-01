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
            def imageFiles = []
            params.foodImage.each {
                imageFiles.add(it.value)
            }

            result = menuService.createFood(name, price, description, shortDescription, dishFlavor, highLight, imageFiles)

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

        render(template: "/template/personal_dish_create", model: [user: user])
    }

    def dishDetail(long dishId, int offset){
        def dish = Menu.get(dishId)
        def relatedDish = []
        if(dish){
            dish.visit++
            relatedDish = menuService.getRelatedDish(dish.chef, dish)
        }
        def user = springSecurityService.currentUser

        def review = DishReview.findAllByDish(dish, [sort: 'dateCreated', order: 'desc', max: 10 ?: -1, offset: offset ?: 0])
        def pages = DishReview.countByDish(dish)/10 as Integer
        println pages

        render(view: "/food/dish_detail", model: [dishDetail: dish, relatedDish: relatedDish, review: review, pages: pages, user: user, params: params])
    }

    def dishReviewTemplate(long dishId, int offset){
        def dish = Menu.get(dishId)
        def review = DishReview.findAllByDish(dish, [sort: 'dateCreated', order: 'desc', max: 10 ?: -1, offset: offset ?: 0])
        def pages = DishReview.countByDish(dish)/10 as Integer
        
        render(template: "/template/review_template", model: [dishDetail: dish, review: review, pages: pages, params: params])
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

    def retrieveFoodListByChef(long chefId, int offset){
        def result = chefService.retrieveFoodByChef(chefId, offset)
        def user = springSecurityService.currentUser
        render(view: "/food/dish_list", model: [resultList: result.foodList, pages: result.pages, user: user, params: params])
    }

    def hotDish(int limit){
        def hotDishList = menuService.hotDish(limit)

        render hotDishList
    }

    @Secured(['ROLE_CHEF'])
    def removeDish(long dishId, int offset){
        def user = springSecurityService.currentUser
        def result = menuService.removeDish(user, dishId, offset)

        render([data: result])
    }

    def retrieveDishTemplate(int offset){
        def user = springSecurityService.currentUser as Member
        def disList = Menu.findAllByChefAndStatus(user, MenuStatus.ACTIVE, [max: 15, sort: "createdDate", order: "desc", offset: offset ?: 0])
        def pages = Menu.countByChefAndStatus(user, MenuStatus.ACTIVE)/15 as Integer

        render(template: '/template/personal_dish', model:[data: [dishList: disList, pages: pages], user: user])
    }

    @Secured(['ROLE_CHEF', 'ROLE_USER'])
    def postReview(long dishId, String review){
        def user = springSecurityService.currentUser as Member
        def result = menuService.postReview(user, dishId, review)
        redirect(action: 'dishDetail', params: [dishId: dishId])
    }
}
