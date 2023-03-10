% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/function_nodes_info_core.R
\name{get_nodes_info_core}
\alias{get_nodes_info_core}
\title{Auxiliary function to compute information of node path and dispersal path for each species}
\usage{
get_nodes_info_core(W, tree, ancestral.area, biogeo)
}
\arguments{
\item{W}{Numerical matrix, rows are assemblages and columns are species}

\item{tree}{Phylogenetic tree in newick format}

\item{ancestral.area}{Single column data frame with nodes in rows and ancestral area/Ecoregion of occurrence in columns. If the reconstruction
comes from BioGeoBears this data frame can be obtained with (\code{\link{get_node_range_BioGeoBEARS}})}

\item{biogeo}{Data frame containing the information of the biome/area/ecoregion of each assemblage}
}
\value{
A list with auxiliary information on nodes and species
}
\description{
Auxiliary function to compute information of node path and dispersal path for each species
}
\examples{
\dontrun{
# hypothetical occurrence matrix with species in columns and assemblages in lines
 W_toy<- matrix(c(0, 1, 1, 0, 1, 1, 0, 1, 0, 1, 0, 0, 1, 0, 0),
     nrow= 3,ncol= 5,
     dimnames=list(c("Comm 1", "Comm 2", "Comm 3"),
     c(paste("s", 1:5, sep=""))))
 
 #toy tree
 data(toy_treeEx)
 
 # hypothetical data indicating the ecoregions of each assemblage
 biogeo_toy <- data.frame(Ecoregion= c("A", "B", "C"))
 
 # hypothetical data indicating the ancestral range of each node
 ancestral_area_toy <- data.frame(state= c("ABC", "B", "C", "ABC"))
 
get_nodes_info_core(W=W_toy,tree=toy_treeEx,ancestral.area=ancestral_area_toy,biogeo=biogeo_toy)
}

}
