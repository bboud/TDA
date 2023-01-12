#Install the TDA package (Run once)
# install.packages("TDAstats")
library("TDAstats")

num.pts <- 100
rand.angle <- runif(num.pts, 0, 2*pi)
rand.radius <- runif(num.pts, 0.8, 1.2)

pt.cloud <- cbind(rand.radius*cos(rand.angle), 
		  + rand.radius*sin(rand.angle))

scatter <- plot(pt.cloud)

pers.hom <- calculate_homology(pt.cloud, dim = 2)

barcode <- plot_barcode(pers.hom)

pers.diag <- plot_persist(pers.hom)
