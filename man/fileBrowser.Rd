% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/utils.R
\name{fileBrowser}
\alias{fileBrowser}
\title{Interactive folder selection using a native dialogue}
\source{
Original code by wleepang:
\url{https://github.com/wleepang/shiny-directory-input}
}
\usage{
fileBrowser(default = NULL, caption = NULL, multiple = FALSE,
  directory = FALSE)
}
\arguments{
\item{default}{Character: path to initial folder}

\item{caption}{Character: caption on the selection dialogue}

\item{multiple}{Boolean: allow to select multiple files?}

\item{directory}{Boolean: allow to select directories instead of files?}
}
\value{
A length one character vector, character NA if 'Cancel' was selected.
}
\description{
Interactive folder selection using a native dialogue
}
\details{
Pltaform-dependent implementation:
\itemize{
 \item{\strong{Windows}: calls the \code{utils::choose.files} R function.}
 \item{\strong{macOS}: uses AppleScript to display a folder selection 
 dialogue. If \code{default} is \code{NA}, folder selection fallbacks to the
 default behaviour of the \code{choose folder} AppleScript command.
 Otherwise, paths are expanded with \code{\link{path.expand}}.}
 \item{\strong{Linux}: calls the \code{zenity} system command.}
}

If for some reason an error occurs (e.g. when using a remote server), the
dialog fallbacks to an alternative, non-native file browser.
}
