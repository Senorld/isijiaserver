package isijia
import grails.plugin.springsecurity.annotation.Secured

@Secured(['permitAll'])
class ChefController {
    def chefService
    def springSecurityService

    def index() {

        def chef = MemberRole.findAllByRole(Role.findByAuthority("ROLE_CHEF")).member

        render(view: "/test/chefList", model: [chefList: chef])
        //render(view: "/chef_list", model: [chefList: chef])
    }

    def list(){
        def chef = MemberRole.findAllByRole(Role.findByAuthority("ROLE_CHEF")).member
        def user = springSecurityService.currentUser
        
        render(view: "/chef_list", model: [chefList: chef, user: user])
    }

    def getChefById(long chefId){
        def chef = Member.get(chefId)
        chef.visit++
        def user = springSecurityService.currentUser
        if(MemberRole.findByMemberAndRole(chef, Role.findByAuthority("ROLE_CHEF"))){
            def result = chefService.retrieveFoodByChef(chef)
            render(view: "/chef", model: [chef: chef, dishList: result.foodList, pages: result.pages, user: user])
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
