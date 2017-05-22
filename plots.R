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
