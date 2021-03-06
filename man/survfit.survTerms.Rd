% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/analysis.R
\name{survfit.survTerms}
\alias{survfit.survTerms}
\title{Compute estimates of survival curves}
\usage{
\method{survfit}{survTerms}(survTerms, ...)
}
\arguments{
\item{survTerms}{\code{survTerms} object: processed survival terms}

\item{...}{Arguments passed on to \code{survival::survfit.formula}
\describe{
  \item{weights}{
    The weights must be nonnegative and it is strongly recommended that  
    they be strictly positive, since zero weights are ambiguous, compared 
    to use of the \code{subset} argument.
  }
  \item{subset}{
    expression saying that only a subset of the rows of the data 
    should be used in the fit. 
  }
  \item{na.action}{
    a missing-data filter function, applied to the model frame, after any 
    \code{subset} argument has been used. 
    Default is \code{options()$na.action}. 
  }
  \item{etype}{
    a variable giving the type of event.  This has been superseded by
    multi-state Surv objects; see example below.
  }
  \item{id}{
    identifies individual subjects, when a given person can have multiple
    lines of data.
  }
  \item{istate}{for multi-state models, identifies the initial state of
    each subject}
  \item{timefix}{process times through the \code{aeqSurv} function to
  eliminate potential roundoff issues.}
}}
}
\value{
\code{survfit} object. See \code{survfit.object} for details. Methods
defined for survfit objects are \code{print}, \code{plot}, \code{lines}, and 
\code{points}.
}
\description{
Compute estimates of survival curves
}
\examples{
clinical <- read.table(text = "2549   NA ii  female
                                840   NA i   female
                                 NA 1204 iv    male
                                 NA  383 iv  female
                               1293   NA iii   male
                                 NA 1355 ii    male")
names(clinical) <- c("patient.days_to_last_followup", 
                     "patient.days_to_death",
                     "patient.stage_event.pathologic_stage",
                     "patient.gender")
timeStart  <- "days_to_death"
event      <- "days_to_death"
formulaStr <- "patient.stage_event.pathologic_stage + patient.gender"
survTerms  <- processSurvTerms(clinical, censoring="right", event, timeStart,
                               formulaStr=formulaStr)
require("survival")
survfit(survTerms)
}
