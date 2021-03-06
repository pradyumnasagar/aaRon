% Generated by roxygen2 (4.1.0): do not edit by hand
% Please edit documentation in R/findDomains.R
\name{findDMVs}
\alias{findDMVs}
\title{findDMVs}
\usage{
findDMVs(x, samples, minCov = 5)
}
\arguments{
  \item{x}{\code{GRanges} of methylation count data}

  \item{samples}{\code{data.frame} describing the samples
  to discover DMVs within}

  \item{minCov}{Minumum sequencing coverage for a CpG site
  to contribute to the weighted mean calculation}
}
\value{
\code{GRangesList} of DMVs found in each sample
}
\description{
Find DNA methylation valleys using the procedure described
in Hovestaft 2014
}
\author{
Aaron Statham <a.statham@garvan.org.au>
}

