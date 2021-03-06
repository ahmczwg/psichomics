% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/utils.R
\name{rowMeans}
\alias{rowMeans}
\title{Calculate mean for each row of a matrix}
\usage{
rowMeans(mat, na.rm = FALSE)
}
\arguments{
\item{mat}{Matrix}

\item{na.rm}{Boolean: remove NAs?}
}
\value{
Vector of means
}
\description{
Calculate mean for each row of a matrix
}
\examples{
df <- rbind("Gene 1"=c(3, 5, 7), "Gene 2"=c(8, 2, 4), "Gene 3"=c(9:11)) 
rowMeans(df)
}
