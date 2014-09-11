package isijia

import grails.converters.JSON

class RegisterController {
    def registerService

    def index(){
        render(view: "/register")
    }

    def member(String email, String password, String name, String phoneNumber, String zipCode, String address1, String address2, String city, String state, String birthday, String role, String gender, String description){
        def result = registerService.member(email, password, name, phoneNumber, zipCode, address1, address2, city, state, birthday, role, gender, description)

        redirect(controller: "home", params: [result: result])
    }
}
