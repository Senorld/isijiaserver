package isijia

public enum OrderStatus{
    OPEN, PENDING, SUCCESS, REJECT, CLOSE
}

class MemberOrder {

    static hasMany = [menu: Menu]
    OrderStatus status = OrderStatus.OPEN
    Date createdDate = new Date()
    Date lastChangDate = new Date()
    Member user

    static constraints = {
        user nullable: false
    }
}
