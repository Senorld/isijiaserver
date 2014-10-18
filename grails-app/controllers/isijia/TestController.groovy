package isijia

import org.springframework.security.access.annotation.Secured

@Secured('permitAll')
class TestController {

    def ftpService

    def testBootstrap(){
        render(view: '/testBoostrap');
    }

    def testFtp(){
        File file = File.createTempFile("temp","txt")
        ftpService.save(file.getBytes(), "haha2.text", "haha/test")
    }
}
