% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/data.R
\name{loadedDataModal}
\alias{loadedDataModal}
\title{Create a modal warning the user of already loaded data}
\usage{
loadedDataModal(session, modalId, replaceButtonId, keepButtonId)
}
\arguments{
\item{session}{Shiny session}

\item{modalId}{Character: identifier of the modal}

\item{replaceButtonId}{Character: identifier of the button to replace data}

\item{keepButtonId}{Character: identifier of the button to append data}
}
\value{
HTML elements for a warning modal reminding data is loaded
}
\description{
Create a modal warning the user of already loaded data
}
