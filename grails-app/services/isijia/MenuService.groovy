package isijia

import grails.transaction.Transactional

@Transactional
class MenuService {
    def springSecurityService
    def utilService
    def chefService
    def ftpService

    def createFood(String name, float price, String description, String shortDescription, String dishFlavor, boolean highLight, def imageFiles){
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

        MenuStatus menuStatus = MenuStatus.ACTIVE

        Menu food = new Menu(name: name, price: price, description: description, shortDescription: shortDescription, status: menuStatus, dishFlavor: dishFlavor, highLight: highLight, chef: chef).save(flush: true, failOnError: true)

        if(!food){
            return [success: false, message: "Something wrong when store food into database. Please try again later."]
        }

        if(imageFiles.size() > 0){
            imageFiles.each(){
                def milSecond = System.currentTimeMillis()
                def fileName = "dish_${milSecond}.png"
                String filePath = "dish/${chef.id}"
                ftpService.save(it.getBytes(), fileName, filePath)
                fileName = "userUpload/$filePath/$fileName"

                food.addToImages(image: fileName).save()
            }
        }

        return [success: true, dish: food]
    }

    def searchFood(String keyWorld, int offset){
        int limit = 15;
        if(!keyWorld){
            return [success: false, message: "Please enter key world."]
        }

        def foodList = Menu.findAllByNameLikeAndStatus("%$keyWorld%", MenuStatus.ACTIVE, [max: limit ?: -1, sort: "createdDate", order: "desc", offset: offset ?: 0])
        def pages = Menu.countByNameLikeAndStatus("%$keyWorld%", MenuStatus.ACTIVE)/limit as Integer

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

    def removeDish(def user, long dishId, int offset){
        def dish = Menu.findByIdAndChef(dishId, user)

        def result = [:]
        if(dish){
            dish.status = MenuStatus.CLOSE
            result = [success: true]
        }else{
            result = [success: false]
        }

        return result
    }
}
