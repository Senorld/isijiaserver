package isijia

import grails.transaction.Transactional

import java.text.SimpleDateFormat

@Transactional
class MenuService {
    def springSecurityService
    def utilService
    def createFood(String name, int price, String description, String status, String closeDate, boolean highLight, String fileName){
        if(!name){
            return [success: false, message: "Please enter food name."]
        }

        if(!price){
            return [success: false, message: "The price shouldn't be 0."]
        }

        Date date = null
        if(closeDate){

            date = utilService.convertStringToDate(closeDate)
        }

        def userRoles = springSecurityService.getPrincipal().getAuthorities()
        if(userRoles.any{ it.authority != "ROLE_CHEF"}){
            return [success: false, message: "You don't have permission to create food."]
        }

        def chef = springSecurityService.currentUser

        MenuStatus menuStatus = status as MenuStatus

        def food = new Menu(name: name, price: price, descrption: description, status: menuStatus, closeDate: date, highLight: highLight, chef: chef, image: fileName).save(flush: true, failOnError: true)

        if(!food){
            return [success: false, message: "Something wrong when store food into database. Please try again later."]
        }

        return [success: true]
    }

    def searchFood(String keyWorld){
        if(!keyWorld){
            return [success: false, message: "Please enter key world."]
        }

        def foodList = Menu.findAllByNameLikeOrDescrptionLike("%$keyWorld%", "%$keyWorld%")

        return foodList
    }
}
