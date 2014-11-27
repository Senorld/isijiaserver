package isijia

import grails.transaction.Transactional

@Transactional
class RegisterService {
    def utilService
    def ftpService

    def member(String email, String password, String name, String phoneNumber, String zipCode, String address, String city, String state, String birthdayString, String roleString, String gender, String description, def file){
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

        gender = gender ?: "Male"

        def registered = new Member(email: email, password: password, name: name, phoneNumber: phoneNumber, zipCode: zipCode, address: address, city: city, state: state, birthday: date, gender: gender, description: description).save(flush: true, failOnError: true)

        if (file.getBytes().length > 0) {
            String fileName = "profile_image.png"
            String filePath = "user/${registered.id}"
            ftpService.save(file.getBytes(), fileName, filePath)
            fileName = "userUpload/$filePath/$fileName"

            registered.profile = fileName
        }

        if(!registered){
            log.error("Member register error: $registered")
            return [success: false, message: "Register fail, please try again later."]
        }

        new MemberRole(role: role, member: registered).save(flush: true, failOnError: true)

        return [success: true]
    }
}
