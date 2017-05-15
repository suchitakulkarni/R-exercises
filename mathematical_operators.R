# Note: R does not allow multiple line comments
# Mathematical operators act on each item of vector
# They are of following type:
# Arithmetic Operators
# Relational Operators
# Logical Operators
# Assignment Operators
# Miscellaneous Operators

# Declare two vectors
v <- c( 2,5.5,6)
t <- c(8, 3, 4)

# ---------------------------
# MATHEMATICAL OPERATORS
# ---------------------------
# Add two vectors
print(v+t)

# Subtract two vectors
print(v-t)

# Multiply two vectors
print(v*t)

# Divide first vector with second
print(v/t)

# Give remainder of the division
print(v%%t) # NOTE: new function

# Give quotient of the division
print(v%/%t) # NOTE: new function

# Exponentiate the vectors
print(v^t) # NOTE: new function

# ---------------------------
# RELATIONAL OPERATORS
# ---------------------------
v <- c(2,5.5,6,9)
t <- c(8,2.5,14,9)

# checks if each element of first vector is greater than the corresponding element of second
print(v>t)

# checks if each element of first vector is less than the corresponding element of second
print(v<t)

# checks if each element of first vector is equal to than the corresponding element of second
print(v==t)

# checks if each element of first vector is less than or equal to corresponding element of second
print(v<=t)

# checks if each element of first vector is greater than or equal to corresponding element of second
print(v>=t)

# checks if each element of first vector is not equal to the corresponding element of second
print(v!=t)
