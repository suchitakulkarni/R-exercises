# Note: R does not allow multiple line comments
# print "hello world!"
myString<-"Hello World!"

print (myString)

# find types of variables
# several different types are tried out
v <- TRUE
cat ("value of v is", v, " and has a class of ", class(v), "\n")

v <- 80
print("value of v is")
print(v)
print(class(v))

v <- 80.0
print("value of v is")
print(v)
print(class(v))
v <- 2L
print("value of v is")
print(v)
print(class(v))
v <- 5+3i
print("value of v is")
print(v)
print(class(v))
v <- "True"
print("value of v is")
print(v)
print(class(v))
v <- charToRaw("Hello")
print("value of v is")
print(v)
print(class(v))

#Create a vector
apple <- c("cake", "Butter", "cheeese")
print(apple)
#vector enumerate from 1
print(apple[1])
# the following is the class of vector
print(class(apple))

#list can constain other lists and/or functions
#create a list
list1 <- list(c(2,3,5),21,sin)

#lists enumerate at 1
#print list
print(list1)
print(list1[1])

#create a matrix
M = matrix(c("a","a","b","c","d","e"), nrow = 2, ncol= 3,byrow=TRUE)
print(M)
M = matrix(c("a","a","b","c","d","e"), nrow = 2, ncol= 3,byrow=FALSE)
print(M)
print(M[2,3])

#create an array
a <- array(c("green","yellow"),dim=c(3,3,5))
print(a)

apple <- c("cake", "Butter", "cheeese", "cake", "Butter", "cheeese")
factor_apple <- factor(apple)
print(factor_apple)
print(nlevels(factor_apple))
