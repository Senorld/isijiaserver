package isijia

import grails.transaction.Transactional

@Transactional
class RegisterService {
    def utilService

    def member(String email, String password, String name, String phoneNumber, String zipCode, String address1, String address2, String city, String state, String birthdayString, String roleString){
        if(!email || !password || !name){
            return [success: false, message: "Email, Password, and name are required to register."]
        }

        if(roleString == "ROLE_ADMIN"){
            return [success: false, message: "Admin user shouldn't registered by this way."]
        }
        def role = Role.findByAuthority(roleString)

        def existsMember = Member.findByEmail(email)

        if(existsMember){
            return [success: false, message: "Your email already registered, please login."]
        }

        def date = birthdayString ? utilService.convertStringToDate(birthdayString) : null

        def registered = new Member(email: email, password: password, name: name, phoneNumber: phoneNumber, zipCode: zipCode, address1: address1, address2: address2, city: city, state: state, birthday: date).save(failOnError: true)

        if(!registered){
            log.error("Member register error: $registered")
            return [success: false, message: "Register fail, please try again later."]
        }


        new MemberRole(role: role, member: registered).save(flush: true, failOnError: true)

        return [success: true]
    }
}
