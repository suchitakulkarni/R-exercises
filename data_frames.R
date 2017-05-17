# Note: R does not allow multiple line comments

# Create the data frame.
BMI <- 	data.frame(
gender = c("Male", "Male","Female"),
height = c(152, 171.5, 165),
weight = c(81,93, 78),
Age = c(42,38,26)
)

print(BMI)
for (i in BMI)
{
    for (j in i)
        print(j)
}

print(BMI[1])
print(BMI[2][1])
