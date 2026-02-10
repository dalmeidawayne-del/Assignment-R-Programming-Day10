#WAP in R to Create following Functions:
  
#  1) sum(a,b,c)

# To Create the first function
# To Calculate the Addition Function
#To assign a user defined function
sum<- function() {
  #to read  each number from the user
  a <- as.numeric(readline("Enter first number: "))
  b <- as.numeric(readline("Enter second number: "))
  c <- as.numeric(readline("Enter third number: "))
  #To assign a variable for the calculation
  r <- a + b + c
  # to display the result
  return(r)
}

# To display the addition function
print(paste("The Sum of the three numbers is :",sum()))

