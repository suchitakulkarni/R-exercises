# Note: R does not allow multiple line comments
# set the random seed
set.seed(3000)

# set range of the x parameter
xseq<-seq(-4,4,.01)

# Create PDF
densities<-dnorm(xseq, 0,1)

# Create CDF
cumulative<-pnorm(xseq, 0, 1)

# Create the toys
randomdeviates<-rnorm(1000,0,1)

# Give the chart file a name.
# the filename should be before the par command
png("/Users/kulkarni/data_science/TutsR/plots/Gaussian_demo.png")

# Create plot frame
par(mfrow=c(1,3), mar=c(3,4,4,2))

# Plot the PDF
plot(xseq, densities, col="darkgreen",xlab="", ylab="Density", type="l",lwd=2, cex=2, main="PDF of Standard Normal", cex.axis=.8)

#plot the CDE
plot(xseq, cumulative, col="darkorange", xlab="", ylab="Cumulative Probability",type="l",lwd=2, cex=2, main="CDF of Standard Normal", cex.axis=.8)

# Plot the distribution
hist(randomdeviates, main="Random draws from Std Normal", cex.axis=.8, xlim=c(-4,4))

# Save the file.
dev.off()
