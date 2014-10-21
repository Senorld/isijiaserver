package isijia

public enum MenuStatus{
    PRIVATE, PUBLIC, CLOSE
}

class Menu {

    String name
    int price
    String shortDescription
    String description
    String dishFlavor
    MenuStatus status = MenuStatus.PRIVATE
    Date createdDate = new Date()
    Date closeDate
    String image
    boolean highLight = false
    Member chef
    long visit = 0
    static hasMany = [likes: LikeMenu]

    static constraints = {
        name nullable: false
        image nullable: true
        createdDate nullable: false
        closeDate nullable: true
        chef nullable: false
        dishFlavor nullable: true
    }
}
