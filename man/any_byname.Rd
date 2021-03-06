% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Unary.R
\name{any_byname}
\alias{any_byname}
\title{Are any matrix elements \code{TRUE}?}
\usage{
any_byname(a)
}
\arguments{
\item{a}{a matrix or list of matrices}
}
\value{
\code{TRUE} if any elements of \code{a} are \code{TRUE}, \code{FALSE} otherwise
}
\description{
Tells whether any elements in matrix \code{a} are true.
}
\details{
\code{a} can be a matrix or a list of matrices.
}
\examples{
any_byname(matrix(c(TRUE, FALSE), nrow = 2, ncol = 1))
any_byname(matrix(rep(FALSE, times = 4), nrow = 2, ncol = 2))
}
