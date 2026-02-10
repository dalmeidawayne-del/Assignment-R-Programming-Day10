#3) max(a,b)

# To Create the Third function
# To Calculate the max function
#To assign a user defined function
mmax <- function() {
  #to read  each number from the user
  a <- as.numeric(readline("Enter first number: "))
  b <- as.numeric(readline("Enter second number: "))
  # To  use the if condition to compare  the two numbers 
  if (a > b) {
    return(a)
  } else {
    return(b)
  }
}
# To display the max function
print(paste("The Max of the two numbers is :", mmax()))
