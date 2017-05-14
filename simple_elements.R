# Note: R does not allow multiple line comments
# print "hello world!"
myString<-"Hello World!"

print (myString)

# find types of variables
# several different types are tried out
# Note use of cat to print
# Note cat results in different way of output than print
# with cat, there is no [1] on the line which I like
# cat REQUIRES \n at the end of line for newline print, print does not
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

#Cectors enumerate from 1
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

#find active variables in memory
print("Memory variables are")
print(ls())

# List the variables starting with the pattern "var".
cat("Pattern match variables starting with patter var \n")
print(ls(pattern = "var"))

# By definition variables starting with dot '.' are not listes
# do this to list them
cat("List all variables \n")
cat(ls(all.name = TRUE))

#Delete single variable
rm(list1)
# this accesses non-existing variable, will lead to error
# uncomment to test that the variable is removed
#print(list1)

# remove all variables
rm(list = ls())
# The following command should lead to output 'character(0)'
print(ls())
