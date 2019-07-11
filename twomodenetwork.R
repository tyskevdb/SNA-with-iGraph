library(igraph)

# Entering a two-mode matrix
twomodematrix <- matrix(c(
  1,0,0,
  1,1,1,
  1,1,1,
  1,1,0,
  1,1,0,
  0,0,1,
  0,1,0,
  0,1,0,
  0,1,1,
  0,0,1,
  1,0,0)
  ,nrow=11
  ,ncol=3
  ,byrow=TRUE)

# Giving the columns (disciplines) and rows (colleagues) names
dimnames(twomodematrix) <- list( 
  c("Christine", "Wouter", "Kasper", "Sarah", "Tijs", "Peter", "Marieke", "Remco", "Jan", "Nel", "Bianca"),
  c("Social network analysis", "Machine learning", "Topic modelling"))

twomodematrix

# Creating a two-mode network graph
twomodenetwork <- graph.incidence(twomodematrix)

twomodenetwork

# Plotting the network
plot(twomodenetwork)

# Giving the different types of nodes different colors
V(twomodenetwork)$color <- ifelse(V(twomodenetwork)$type, "lightblue", "orange")
V(twomodenetwork)$shape <- ifelse(V(twomodenetwork)$type, "circle", "square")
E(twomodenetwork)$color <- "black"

plot(twomodenetwork)
