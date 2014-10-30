package isijia

class DishReview {

    Menu dish
    Member user
    String review

    static constraints = {

        dish nullable: false
        user nullable: false
        review nullable: false
    }

    static mapping = {
        review type: "text"
    }
}
