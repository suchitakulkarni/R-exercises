# Note: R does not allow multiple line comments
# print "hello world!"
myString<-"Hello World!"

print (myString)

# find types of variables
# several different types are tried out
v <- TRUE
cat ("value of v is", v, " and has a class of ", class(v), "\n")

# note seemingly float and int types are the same, class = numeric
v <- 80
cat ("value of v is", v, " and has a class of ", class(v), "\n")

v <- 80.0
cat ("value of v is", v, " and has a class of ", class(v), "\n")

v <- 2L
cat ("value of v is", v, " and has a class of ", class(v), "\n")

v <- 5+3i
cat ("value of v is", v, " and has a class of ", class(v), "\n")

v <- "True"
cat ("value of v is", v, " and has a class of ", class(v), "\n")

v <- charToRaw("Hello")
cat ("value of v is", v, " and has a class of ", class(v), "\n")

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
