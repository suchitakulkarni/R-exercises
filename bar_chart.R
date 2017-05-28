# Note: R does not allow multiple line comments
# Create data for the graph.
x <- c(21, 62, 10, 53)
labels <- c("London", "New York", "Singapore", "Mumbai")

# Give the chart file a name.
png(file = "/Users/kulkarni/data_science/TutsR/plots/city_title_colours.png")

# Plot the chart with title and rainbow color pallet.
pie(x, labels, main = "City pie chart", col = rainbow(length(x)))

# Save the file.
dev.off()

# Let's try to make the percentages
# Create data for the graph.
x <-  c(21, 62, 10,53)
labels <-  c("London","New York","Singapore","Mumbai")

# you'll need to create percentage of each contribution
piepercent<- round(100*x/sum(x), 1)

# Give the chart file a name.
png(file = "/Users/kulkarni/data_science/TutsR/plots/city_percentage_legends.jpg")

# Plot the chart.
pie(x, labels = piepercent, main = "City pie chart",col = rainbow(length(x)))
legend("topright", c("London","New York","Singapore","Mumbai"), cex = 0.8,
fill = rainbow(length(x)))

# Save the file.
dev.off()

# Let's try to make the chard static 3D

# Get the library.
library(plotrix)

# Create data for the graph.
x <-  c(21, 62, 10,53)
lbl <-  c("London","New York","Singapore","Mumbai")

piepercent<- round(100*x/sum(x), 1)

# Give the chart file a name.
png(file = "/Users/kulkarni/data_science/TutsR/plots/3d_pie_chart.jpg")

# Plot the chart.
# this way looks nice
#pie3D(x,labels = lbl,explode = 0.1, main = "Pie Chart of Countries ")

# we could also create percentages out of it, but it does not look as nice
pie3D(x, labels = piepercent, main = "City pie chart",col = rainbow(length(x)))
legend("topright", c("London","New York","Singapore","Mumbai"), cex = 0.8,
fill = rainbow(length(x)))

# Save the file.
dev.off()

# Create the input vectors.
colors <- c("green","orange","brown")
months <- c("Mar","Apr","May","Jun","Jul")
regions <- c("East","West","North")

# Create the matrix of the values.
Values <- matrix(c(2,9,3,11,9,4,8,7,3,12,5,2,8,10,11),nrow = 3,ncol = 5,byrow = TRUE)

# Give the chart file a name.
png(file = "/Users/kulkarni/data_science/TutsR/plots/barchart_stacked.png")

# Create the bar chart.
barplot(Values,main = "total revenue",names.arg = months,xlab = "month",ylab = "revenue",
col = colors)

# Add the legend to the chart.
legend("topleft", regions, cex = 1.3, fill = colors)

# Save the file.
dev.off()
