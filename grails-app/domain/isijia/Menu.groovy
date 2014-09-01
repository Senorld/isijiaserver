package isijia

public enum MenuStatus{
    PRIVATE, PUBLIC, CLOSE
}

class Menu {

    String name
    int price
    String descrption
    MenuStatus status = MenuStatus.PRIVATE
    Date createdDate = new Date()
    Date closeDate
    String image
    boolean highLight = false
    Member chef
    int rate = 0

    static constraints = {
        name nullable: false
        image nullable: true
        createdDate nullable: false
        closeDate nullable: true
        chef nullable: false
    }
}
