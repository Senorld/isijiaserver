package isijia

public enum OrderStatus{
    PENDING, SUCCESS, REJECT, CLOSE
}

class MemberOrder {

    static hasMany = [menu: Menu]
    OrderStatus status = OrderStatus.PENDING
    Date createdDate = new Date()
    Date lastChangDate = new Date()
    Member user

    static constraints = {
        user nullable: false
    }
}
