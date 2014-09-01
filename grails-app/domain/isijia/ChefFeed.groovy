package isijia

class ChefFeed {

    Member chef
    MemberOrder order
    Member user
    String message
    int rate = 0
    Date createdDate = new Date()

    static constraints = {
        chef nullable: false
        order nullable: false
        user nullable: false
        message nullable: false
    }

    static mapping = {
        message type: 'text'
    }

}
