package isijia
import grails.plugin.springsecurity.annotation.Secured

@Secured(['permitAll'])
class ChefController {
    def chefService

    def index() {
        def role = Role.findByAuthority("ROLE_CHEF")
        def chef = MemberRole.findAllByRole(role).member

        //render(view: "/test/chefList", model: [chefList: chef])
        render(view: "/chef", model: [chefList: chef])
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
