% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Apply.R
\name{elementapply_byname}
\alias{elementapply_byname}
\title{Apply a function to an element of a matrix specified by rows and columns}
\usage{
elementapply_byname(FUN, a, row, col, .FUNdots = NULL)
}
\arguments{
\item{FUN}{a unary function to be applied to specified rows and columns of \code{a}}

\item{a}{the argument to \code{FUN}}

\item{row}{the row name of the element to which \code{FUN} will be applied}

\item{col}{the column name of the element to which \code{FUN} will be applied}

\item{.FUNdots}{a list of additional arguments to \code{FUN}. (Default is \code{NULL}.)}
}
\value{
\code{a}, after \code{FUN} has been applied to the element at \code{row} and \code{col}
}
\description{
\code{FUN} is applied to the element of \code{a} that is specified by \code{row} and \code{col}.
}
\details{
\code{row} and \code{col} can be any of row or column names or integer indices or a mix of both.
}
\examples{
divide <- function(x, divisor){
  x/divisor
}
m <- matrix(c(1:4), nrow = 2, ncol = 2, dimnames = list(c("r1", "r2"), c("c1", "c2"))) \%>\% 
  setrowtype("row") \%>\% setcoltype("col")
elementapply_byname(divide, a = m, row = 1, col = 1, .FUNdots = list(divisor = 2))
elementapply_byname(divide, a = m, row = 1, col = 2, .FUNdots = list(divisor = 10))
elementapply_byname(divide, a = m, row = "r2", col = "c2", .FUNdots = list(divisor = 100))
}
