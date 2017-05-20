# Note: R does not allow multiple line comments
# I will practice writing some small functions here
# functions with return value

# Create a function with an argument.
# checks if the arguement is numeric type
# function will abort otherwise
new.function <- function(a) {
    if(class(a)!="numeric")
    {
        print("Only numeric input accepted")
        return("False")
    }
    v<-c()
    index<-1
    for(i in 1:a)
    {
        v[[index]]<-(i^2)
        index<-index+1
    }
    print(v)
}

# Call the function without supplying an argument.
new.function(4.4)

if (new.function("hello")=="False"){print("evaluation successful")}
