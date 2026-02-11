#WAP in R to Create Following data Frame Customer of shopping 
#Customer,-Customerid ,-Firstname,-lastname,-amount,-gender,-date

#select Function
#Display all customers
#Display Customer firstname, lastname and amount
#Display Customerid, firstname and date of shopping 
#Display Customerid, firstname amount and date of shopping 
#Display customer details without gender column


#mutate function
#Add fullname column 
#Calculate total amount Column(2% GST on Existing amount column) 

#Filter function
#Display all the customer whose amount is greater than Rs500
#Display all the customer whose gender is male  amount is greater than Rs500
#Display all the customer whose date is between 2019 to 2020



#Solution to the Program
# To install the Dplyer Package
install.packages("dplyr")

#To  Load the library for use
library(dplyr)

# Create Customer data frame
Customer <- data.frame(
  Customerid = c(1,2,3,4,5),
  Firstname = c("Rahul","Amit","Sneha","Pooja","Karan"),
  lastname = c("Sharma","Patel","Mehta","Verma","Singh"),
  amount = c(450,700,1200,300,800),
  gender = c("Male","Male","Female","Female","Male"),
  date = as.Date(c("2019-05-10","2020-07-15","2021-01-10","2018-12-25","2020-11-30"))
)

Customer


#select Function
#Display all customers
select(Customer, everything())


#Display Customer firstname, lastname and amount
select(Customer, Firstname, lastname, amount)

#Display Customerid, firstname and date of shopping 
select(Customer, Customerid, Firstname, date)

#Display Customerid, firstname amount and date of shopping 
select(Customer, Customerid, Firstname, amount, date)

#Display customer details without gender column
select(Customer, -gender)



#mutate function
#Add fullname column 
Customer2 <- Customer %>%
  mutate(fullname = paste(Firstname, lastname))

Customer2

#Calculate total amount Column(2% GST on Existing amount column) 
Customer3 <- Customer2 %>%
  mutate(total_amount = amount + (amount * 0.02))

Customer3



#Filter function
#Display all the customer whose amount is greater than Rs500
filter(Customer3, amount > 500)

#Display all the customer whose gender is male  amount is greater than Rs500
filter(Customer3, gender == "Male" & amount > 500)

#Display all the customer whose date is between 2019 to 2020
filter(Customer3, date >= "2019-01-01" & date <= "2020-12-31")


