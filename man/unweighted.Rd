% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/survey_statistics.r
\name{unweighted}
\alias{unweighted}
\title{Calculate the an unweighted summary statistic from a survey}
\usage{
unweighted(x, ...)
}
\arguments{
\item{x}{A variable or expression}

\item{...}{Ignored}
}
\description{
Calculate unweighted summaries from a survey dataset, just as on
a normal data.frame with \code{\link[dplyr]{summarise}}.
}
\examples{
library(survey)
data(api)

dstrata <- apistrat \%>\%
  as_survey_design(strata = stype, weights = pw)

dstrata \%>\%
  summarise(api99_unw = unweighted(mean(api99)),
            n = unweighted(n()))

dstrata \%>\%
  group_by(stype) \%>\%
  summarise(api_diff_unw = unweighted(mean(api00 - api99)))

}

