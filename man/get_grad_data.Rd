% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/get_grad_data.R
\name{get_grad_data}
\alias{get_grad_data}
\title{get_grad_data}
\usage{
get_grad_data(org_ids, class_of_years = 2017)
}
\arguments{
\item{org_ids}{A numeric vector of NRC organization ids. You can look them up for a school or
district by using get_org_id(name). These can be viewed by looking at the
nrc_orgs data frame that comes with the nrc package.}

\item{class_of_years}{a numeric vector of spring school years.
For example, 2016 would be submitted for the class of 2015-2016 school year.}
}
\value{
returns a data frame of cohort graduation data.
}
\description{
get_grad_data returns a data frame of cohort graduation data from the
   Nevada Report Card (NRC) API given a numeric vector of NRC organization ids and
   "Class of" school years.
}
\details{
All the cohort data, through class of 2016, that can be pulled by this function is available
   in the data frame `nrc_cohort_data` that comes with the nrc package; View(nrc_cohort_data).
   This function was used to create that data frame.
}
\examples{
# Get cohort grad data for CCSD schools for 2015-2016
ccsd_ids <- nrc_orgs$id[nrc_orgs$parent_id == 64827 | nrc_orgs$id == 64827]
ccsd_grad_2016 <- get_grad_data(ccsd_ids, 2016)

# Get grad data for the state for all years.
state_grad <- get_grad_data(64825, 2011:2016)
}
