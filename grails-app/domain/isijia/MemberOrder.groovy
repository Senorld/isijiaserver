package isijia

public enum OrderStatus{
    PENDING, SUCCESS, REJECT, CLOSE, CONFIRMED, CANCELED
}

class MemberOrder {

    OrderStatus status = OrderStatus.PENDING
    Date createdDate = new Date()
    Date lastChangDate = new Date()
    Member user
    Menu menu
    int amount
    String note
    String shipOption

    String phoneNumber
    String wechat
    String address
    String city
    String zipCode

    static constraints = {
        user nullable: false
        note nullable: true
        shipOption nullable: true

        phoneNumber nullable: false
        wechat nullable: true
        address nullable: false
        city nullable: false
        zipCode nullable: false
    }
}
