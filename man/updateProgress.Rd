% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/utils.R
\name{updateProgress}
\alias{updateProgress}
\title{Update a progress object}
\usage{
updateProgress(message = "Loading...", value = NULL, max = NULL,
  detail = NULL, divisions = NULL, global = if (isRunning())
  sharedData else getHidden(), console = TRUE)
}
\arguments{
\item{message}{Character: progress message}

\item{value}{Integer: current progress value}

\item{max}{Integer: maximum progress value}

\item{detail}{Character: detailed message}

\item{divisions}{Integer: number of divisions in the progress bar}

\item{global}{Shiny's global variable}

\item{console}{Boolean: print message to console? (TRUE by default)}
}
\value{
NULL (this function is used to modify the Shiny session's state)
}
\description{
Update a progress object
}
\details{
If \code{divisions} is not NULL, a progress bar is started with the 
given divisions. If \code{value} is NULL, the progress bar will be 
incremented by one; otherwise, the progress bar will be incremented by the
integer given in value.
}
