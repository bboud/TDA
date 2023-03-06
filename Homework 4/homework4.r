#install.packages("TDAstats")
library("TDAstats")

num.pts <- 50
radius <- 1

angles1 <- runif(num.pts, 0, 2*pi)

df1 <- data.frame(x=radius*cos(angles1) - 1, y=radius*sin(angles1))

angles2 <- runif(num.pts, 0, 2*pi)

df2 <- data.frame(x=radius*cos(angles2) + 1, y=radius*sin(angles2))

comb <- rbind(df1, df2)

# plot the data
scatterplot <- plot(comb)

# calculate the persistent homology
pers.hom <- calculate_homology(comb, dim = 2)

# display the results
barcode <- plot_barcode(pers.hom)
pers.diag <- plot_persist(pers.hom)