Brainstorming
-------------

* Story

A customer walks up to a coffee shop and places their order. He/she rattles off names of the drinks that they would like and maybe they have other friends with them so they have multiple drinks. 

The cashier begins taking the new order by inputing the drinks, their individual quantity, then press a button to add tax (if applicable) and get the total for the customer. The customer then tenders payment to the cashier, which the cashier records, the appropriate change is calculated, and that concludes the transaction.

This information is then printed onto a receipt for the shop's and customer's record.

* What are we making?

A payment till system. How does a till system work? The till operator presses specific buttons that correspond to different dishes.

* What is the app trying to do?

Well, we have a json file that looks like it contains information about the restaurant, and a menu element with a key-value pair of dish names and prices.

The app is going to be used to replace a till. It needs to be extremely simple to use. The till operator should type the name of the dish and the price comes up. The till will have dishes

First step should be to make sure we can parse json data from the file and into our app.

The till system is where we will feed the information from a json file. The system should be able to break up the information available in the json file into different categories so that its easily available when we goto print the receipt for a customer.

It should be able to do this generally so that the system is applicable to different shops with little to no modification. 

The receipt should contain:

1. Restaurant information from the till system
2. Date/Time
3. Voucher/Discount
4. Table/Take-Away
5. Customer name(s)
6. Dish + quantity x price
7. Discount applied (if any)
8. Tax 
9. Total Bill
10. Cash paid by customer
11. Change due to customer

* CRC
1. Till = Our system. This pulls in information from the json file supplied to it and makes it available for other classes.
2. Receipt: has name, address and telephone of the restaurant, voucher, table number/take-away order customer name, lineorder (dish + quantity x price), discount applied, tax, total, cash paid, change due
3. Order: This is the order placed by the customer. It has the customer name, type of order (eat in, take-away), dish, quantity


* What is this system comprised of?

1. Name of the restaurant/shop
2. Date
3. Time
4. Address
5. Telephone
6. Table
7. Number of and names of people at the table
8. Name of Food items
9. Quantity of individual Food items
10. Price of individual Food items
11. Voucher: %disc, on what, valid date to-from


* What classes can we derive from the list?

1) 