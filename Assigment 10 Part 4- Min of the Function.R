# 4) mymin(a,b,c)

# To Create the Fourth function
# To Calculate the min function
#To assign a user defined function
mmin <- function() {
  
  # #to read  each number from the user
  a <- as.numeric(readline("Enter first number: "))
  b <- as.numeric(readline("Enter second number: "))
  c <- as.numeric(readline("Enter third number: "))
  # To  use the if else condition to compare  the three numbers  
    if (a <= b && a <= c) {
    return(a)
  } else if (b <= a && b <= c) {
    return(b)
  } else {
    return(c)
  }
}

# display result
print(paste("The Min of the three numbers is :", mmin()))
