package isijia

class Member {

	transient springSecurityService

	String email
	String password
    String name
    String phoneNumber
    String zipCode
    String address1
    String address2
    String city
    String state
    Date birthday
    String profile

	boolean enabled = true
	boolean accountExpired
	boolean accountLocked
	boolean passwordExpired

	static transients = ['springSecurityService']

	static constraints = {
        email blank: false, unique: true
		password blank: false
        name blank: false, nullable: false
        phoneNumber nullable: true
        address1 nullable: true
        address2 nullable: true
        city nullable: true
        state nullable: true
        birthday nullable: true
        profile nullable: true
        zipCode nullable: true

	}

	static mapping = {
		password column: '`password`'
	}

	Set<Role> getAuthorities() {
		MemberRole.findAllByMember(this).collect { it.role }
	}

	def beforeInsert() {
		encodePassword()
	}

	def beforeUpdate() {
		if (isDirty('password')) {
			encodePassword()
		}
	}

	protected void encodePassword() {
		password = springSecurityService?.passwordEncoder ? springSecurityService.encodePassword(password) : password
	}
}
