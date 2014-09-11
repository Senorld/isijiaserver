package isijia
import grails.plugin.springsecurity.annotation.Secured

@Secured(['permitAll'])
class ChefController {
    def chefService

    def index() {

        def chef = MemberRole.findAllByRole(chefRole).member

        //render(view: "/test/chefList", model: [chefList: chef])
        render(view: "/chef", model: [chefList: chef])
    }

    def getChefById(long chefId){
        def chef = Member.get(chefId)
        if(MemberRole.findByMemberAndRole(chef, Role.findByAuthority("ROLE_CHEF"))){
            def foodList = chefService.retrieveFoodByChef(chef)
            render(view: "/chef", model: [chef: chef, dishList: foodList])
        }else{
            render(controller: "home")
        }
    }

    @Secured(['ROLE_USER', 'ROLE_CHEF'])
    def postFeed(String message, int chefId, int rate){
        def result = chefService.postFeed(message, chefId, rate)

        render(view: "/test/chefList")
    }

    def retrieveFeedListByChef(long chefId){
        def result = chefService.retrieveFeed(chefId)

        render(view: "/test/chefFeed")
    }

}
