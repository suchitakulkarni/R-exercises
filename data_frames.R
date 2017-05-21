# Note: R does not allow multiple line comments

# Create the data frame by directly providing the data.
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

# The other way is to create data frame out of exiting lists/vectors
# Here is an attempt at doing it
# Let us have individual lists/arrays

QuarkName <- c("uL", "dL", "uR", "dR")
WeakCharge <- c(1/2, -1/2, 0, 0)
WeakHypercharge <- c(1/3, 1/3, 4/3, 2/3)
ElectricCharge <- c(2/3, -1/3, 2/3, -1/3)

QuarkFrame <- cbind(QuarkName, WeakCharge, WeakHypercharge, ElectricCharge)

print(QuarkFrame)


QuarkName <- c("uL", "dL", "uR", "dR")
WeakCharge <- c(1/2, -1/2, 0, 0)
WeakHypercharge <- c(1/3, 1/3, 4/3, 2/3)
ElectricCharge <- c(2/3, -1/3, 2/3, -1/3)

QuarkFrame2 <- cbind(QuarkName, WeakCharge, WeakHypercharge, ElectricCharge)

print(QuarkFrame)

# Apparently you can invoke a library at any point in the code
library(MASS)
# Pima.tr description
# https://stat.ethz.ch/R-manual/R-devel/library/MASS/html/Pima.tr.html
# Pima.tr is the training set: set size = 200
# Pima.te is remaining 332 data records

# The records are merged on values of bp and bmi
# The resulting data frame contains records where the values for the two match
# Pay close attention to the format of the output
# It has two columns, bp and bmi which were created for merged.Pima set
# for the rest of the dataset the column names are simply called,

merged <- merge(x = Pima.te, y = Pima.tr,
by.x = c("bp", "bmi"),
by.y = c("bp", "bmi")
)
print(merged)
nrow(merged)

# Switching to different library for a different type of manipulation
library(MASS)
print(ships)
# Necessary for melt and cast functions
library(reshape)

molten.ships <- melt(ships, id = c("type","year"))
print(molten.ships)
# show the structure of data frame
# IMPORTANT AND INTERESTING
str(molten.ships)
# Not let's try to make a plot
# Give the chart file a name.
# the filename should be before the par command
png("/Users/kulkarni/data_science/TutsR/plots/Pima_simple_corelation.png")

#plot(Pima.te$glu, Pima.te$age, col="red" )
plot(merged$glu.x, merged$age.y, col="red", ylim=range(c(merged$age.y,merged$age.x)))
par(new=TRUE)
plot(merged$glu.x, merged$age.x, col="green", axes = FALSE, xlab = "", ylab = "")
par(new=TRUE)

# Save the file.
dev.off()

