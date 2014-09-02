isijia Server
============

<h1>API</h1>

* Register, Retrieve User List
    - Test URL: (http://isijia.com/)
    - Register URL: (http://isijia.com/register/member)
        * Parameters: Email, Password, Name, Phone Number, Address1, Address2, City, Stats, Birthday, Role(User, Chef)
    
    - Retrieve User List URL: (http://isijia.com/user/retrieveList)
    - Retrieve Chef List URL: (http://isijia.com/chef)

* Login
    - Login URL: (http://isijia.com/login/auth)

* Order
    - Member Order Test URL: (http://isijia.com/memberOrder)
    - Review Order URL: (http://isijia.com/memberOrder/reviewOrder)
        * Parameters: foodId
    - Create a Order URL: (http://isijia.com/memberOrder/checkout)
        * Parameters: foodId
    - Update Order Status URL: (http://isijia.com/memberOrder/updateStatus)
        * Parameters: orderId, status(PENDING, SUCCESS, CLOSE, REJECT)
    - Retrieve All Orders (http://isijia.com/memberOrder/retrieveList)
    - Retrieve Order By User (which your logged in) URL: (http://isijia.com/memberOrder/retrieveListByUser)
    - Retrieve Order By Chef URL: (http://isijia.com/memberOrder/retrieveOrderByChef)
        * Parameters: chefId
        
        
* Menu
    - Create Menu(Need to login as Chef), URL: (http://isijia.com/menu/createFood)
        * Parameter: name, price, description, status(PENDING, SUCCESS, CLOSE, REJECT), closeDate, highLight(true, false)
    - Retrieve Menu List URL: (http://isijia.com/menu/retrieveList)
    - Retrieve Menu By Chef URL: (http://isijia.com/menu/retrieveFoodByChef)
        * Parameter: chefId
        
    