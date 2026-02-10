#2) average(a,b,c,d)
 
 # To Create the second function
 # To Calculate the average function
 #To assign a user defined function
avg<- function() {
 #to read  each number from the user
   a <- as.numeric(readline("Enter first number: "))
   b <- as.numeric(readline("Enter second number: "))
   c <- as.numeric(readline("Enter third number: "))
   d <- as.numeric(readline("Enter fouth number: "))
       #To assign a variable for the calculation
   r <- ((a + b + c)/4)
   # to display the result
      return(r)
       }
  # To display the average function
  print(paste("The Average of the four numbers is :",avg()))


