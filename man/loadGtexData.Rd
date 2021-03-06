% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/data_gtex.R
\name{loadGtexData}
\alias{loadGtexData}
\title{Load GTEx data}
\usage{
loadGtexData(clinical = NULL, sampleMetadata = NULL,
  junctionQuant = NULL, geneExpr = NULL, tissue = NULL)
}
\arguments{
\item{clinical}{Character: path to subject information (the TXT file)}

\item{sampleMetadata}{Character: path to sample metadata (the TXT file)}

\item{junctionQuant}{Character: path to junction quantification}

\item{geneExpr}{Character: path to gene read counts, RPKMs or TPMs}

\item{tissue}{Character: tissue(s) of interest when loading data (all tissues
are loaded by default); if only some tissue(s) are of interest, this may
speed up loading the data}
}
\value{
List with loaded data
}
\description{
Load GTEx data
}
