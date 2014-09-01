package isijia

import grails.transaction.Transactional

@Transactional
class MemberOrderService {
    def springSecurityService

    def checkout(List<Long> foodIdList){

        if(!foodIdList || foodIdList.size() == 0){
            return [success: false, message: "The Food List is null"]
        }

        def food = Menu.findAllByIdInList(foodIdList)
        def user = springSecurityService.currentUser

        if(!food || !user){
            return [success: false, message: "Can't find food or user"]
        }

        def order = new MemberOrder(menu: food, user: user, lastChangDate: new Date()).save(failOnError: true)

        if(!order){
            return [success: false, message: "Something wrong when saving into database, please try again later."]
        }

        return [success: true]
    }

    def retrieveFoodDetail(List<Long> foodIdList){
        if(!foodIdList || foodIdList.size() == 0){
            return [success: false, message: "The Food List is null"]
        }

        def food = Menu.findAllByIdInList(foodIdList)

        if(!food){
            return [success: false, message: "Can't find food or user"]
        }

        return food
    }
}
