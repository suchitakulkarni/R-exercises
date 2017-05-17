# Note: R does not allow multiple line comments
# Create data for the graph.
v <-  c(9,13,21,8,36,22,12,41,31,33,19)

# Give the chart file a name.
png(file = "/Users/kulkarni/data_science/TutsR/plots/histogram.png")

# Create the histogram.
hist(v,xlab = "Weight",col = "white",border = "blue")

# Save the file.
dev.off()

# Create a sequence of numbers between -10 and 10 incrementing by 0.1.
x <- seq(-10, 10, by = .1)

# Choose the mean as 2.5 and standard deviation as 0.5.
y <- dnorm(x, mean = 2.5, sd = 0.5)

# Choose the mean as 2.5 and standard deviation as 0.5.
y1 <- dnorm(x, mean = 5, sd = 0.5)

print(y)
# Give the chart file a name.
png(file = "/Users/kulkarni/data_science/TutsR/plots/dnorm.png")

plot( x, y, type="l", col="red" )
par(new=TRUE)
plot( x, y1, type="l", col="green" )

# Give the chart file a name.
png(file = "/Users/kulkarni/data_science/TutsR/plots/dnorm_hist.png")
#hist(y1)

hist(y1, density=20, breaks=20, prob=TRUE, xlab="x-variable", ylim=c(0, 40), main="normal curve over histogram")

# Save the file.
dev.off()
