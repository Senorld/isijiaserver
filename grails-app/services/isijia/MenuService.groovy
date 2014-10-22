package isijia

import grails.transaction.Transactional

@Transactional
class MenuService {
    def springSecurityService
    def utilService
    def createFood(String name, float price, String description, String shortDescription, String dishFlavor, boolean highLight, String fileName){
        if(!name){
            return [success: false, message: "Please enter food name."]
        }

        if(!price){
            return [success: false, message: "The price shouldn't be 0."]
        }

        def userRoles = springSecurityService.getPrincipal().getAuthorities()
        if(userRoles.any{ it.authority != "ROLE_CHEF"}){
            return [success: false, message: "You don't have permission to create food."]
        }

        def chef = springSecurityService.currentUser

        MenuStatus menuStatus = MenuStatus.PUBLIC

        Menu food = new Menu(name: name, price: price, description: description, shortDescription: shortDescription, status: menuStatus, dishFlavor: dishFlavor, highLight: highLight, chef: chef, image: fileName).save(flush: true, failOnError: true)

        if(!food){
            return [success: false, message: "Something wrong when store food into database. Please try again later."]
        }

        return [success: true, dish: food]
    }

    def searchFood(String keyWorld, int offset){
        int limit = 15;
        if(!keyWorld){
            return [success: false, message: "Please enter key world."]
        }

        def foodList = Menu.findAllByNameLikeOrDescriptionLike("%$keyWorld%", "%$keyWorld%", [max: limit ?: -1, sort: "createdDate", order: "desc", offset: offset ?: 0])
        def pages = Menu.countByNameLikeOrDescriptionLike("%$keyWorld%", "%$keyWorld%")/limit as Integer

        return [resultList: foodList, pages: pages, limit: limit]
    }

    def getRelatedDish(Member chef, Menu dish){
        def relatedDish = Menu.executeQuery('from Menu where chef = ? and id != ? order by ?',[chef, dish.id, "rand()"], [max: 6])

        return relatedDish
    }

    def hotDish(int limit){
        limit = limit ?: 6

        def hotDishList = Menu.list([sort: "visit", order: "desc", max: limit])

        return hotDishList
    }

    def likeMenu(long menuId){
        def menu = Menu.get(menuId)
        if(!menu){ return [success: false] }

        def user = springSecurityService.currentUser as Member
        if(!menu.likes.find({member: user})){
            menu.addToLikes(new LikeMenu(menu: menu, member: user)).save(failOnError: true)
        }

        return [success: true]
    }
}
