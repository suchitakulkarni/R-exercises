# Note: R does not allow multiple line comments

#create a matrix
M = matrix(c("a","a","b","c","d","e"), nrow = 2, ncol= 3,byrow=TRUE)
print(M)
M = matrix(c("a","a","b","c","d","e"), nrow = 2, ncol= 3,byrow=FALSE)
print(M)

#access specific elements of the matrix
print(M[2,3])

#create an array
a <- array(c("green", "yellow"),dim=c(3,3,5))
print(a)

apple <- c("cake", "Butter", "cheeese", "cake", "Butter", "cheeese")
# Create factors - it stores the vector & it's distrinct values as lables
# Vector of disctinct values are always a character irrespective or original type
factor_apple <- factor(apple)

print("the factor function leads to")
print(factor_apple)

# applying the nlevels function we can know the number of distinct values
print("Nlevels function leads to")
print(nlevels(factor_apple))


# One can perform all algebraic operations of matrices
# They will of course follow matrix algebra
Matrix1 = matrix(c(1,2,3,4,5,6), nrow = 2, ncol= 3,byrow=TRUE)
print(Matrix1)
Matrix2 = matrix(c(10,11,12,13,14,15), nrow = 2, ncol= 3,byrow=TRUE)
print(Matrix2)

print(Matrix1+Matrix2)
print(Matrix1-Matrix2)
print(abs(Matrix1-Matrix2))
print(abs(Matrix1*Matrix2))
print(abs(Matrix1/Matrix2))
