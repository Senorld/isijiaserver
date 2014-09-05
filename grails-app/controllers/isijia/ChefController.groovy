package isijia
import grails.plugin.springsecurity.annotation.Secured

@Secured(['ROLE_USER', 'ROLE_CHEF'])
class ChefController {
    def chefService

    def index() {
        def role = Role.findByAuthority("ROLE_CHEF")
        def chef = MemberRole.findAllByRole(role).member

        render(view: "/test/chefList", model: [chefList: chef])
    }

    def postFeed(String message, int chefId, int rate){
        def result = chefService.postFeed(message, chefId, rate)

        render(view: "/test/chefList")
    }

    def retrieveFeedListByChef(long chefId){
        def result = chefService.retrieveFeed(chefId)

        render(view: "/test/chefFeed")
    }

}
