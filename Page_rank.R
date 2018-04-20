#Page rank
library(igraph)
(A <- matrix (c(  0, 0,  1/4,  0,   0,   0,
                  1/2, 0,  1/4,  0,   0,   0,
                  1/2, 1,    0,  0,   0, 1/2,
                  0, 0,    0,  0, 1/2, 1/2,
                  0, 0,  1/4, 1/2,  0,   0,
                  0, 0,  1/4, 1/2,1/2,   0), byrow=TRUE, nrow=6))
G = as.	directed(graph.adjacency(A, weighted = T))

page_rank(G,algo="prpack",directed = TRUE,damping = 0.8,options = NULL)
plot(G)