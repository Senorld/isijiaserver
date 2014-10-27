package isijia

public enum MenuStatus{
    ACTIVE, CLOSE
}

class Menu {

    String name
    int price
    String shortDescription
    String description
    String dishFlavor
    MenuStatus status = MenuStatus.ACTIVE
    Date createdDate = new Date()
    static hasMany = [images: DishImage]
    boolean highLight = false
    Member chef
    long visit = 0
    long likes = 0

    static constraints = {
        name nullable: false
        //images nullable: true
        createdDate nullable: false
        chef nullable: false
        dishFlavor nullable: true
    }
}
