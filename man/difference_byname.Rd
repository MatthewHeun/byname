% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Binary.R
\name{difference_byname}
\alias{difference_byname}
\title{Name-wise subtraction of matrices}
\usage{
difference_byname(minuend, subtrahend)
}
\arguments{
\item{minuend}{matrix or constant}

\item{subtrahend}{matrix or constant

Performs a union and sorting of row and column names prior to differencing.
Zeroes are inserted for missing matrix elements.}
}
\value{
A matrix representing the name-wise difference between \code{minuend} and \code{subtrahend}
}
\description{
Name-wise subtraction of matrices
}
\examples{
library(dplyr)
difference_byname(100, 50)
commoditynames <- c("c1", "c2")
industrynames <- c("i1", "i2")
U <- matrix(1:4, ncol = 2, dimnames = list(commoditynames, industrynames)) \%>\%
  setrowtype("Commodities") \%>\% setcoltype("Industries")
G <- matrix(rev(1:4), ncol = 2, dimnames = list(rev(commoditynames), rev(industrynames))) \%>\%
  setrowtype("Commodities") \%>\% setcoltype("Industries")
U - G # Non-sensical. Row and column names not respected.
difference_byname(U, G) # Row and column names respected! Should be all zeroes.
difference_byname(100, U)
difference_byname(10, G)
difference_byname(G) # When subtrahend is missing, return minuend (in this case, G).
difference_byname(subtrahend = G) # When minuend is missing, return - subtrahend (in this case, -G)
# This also works with lists
difference_byname(list(100, 100), list(50, 50))
difference_byname(list(U,U), list(G,G))
DF <- data.frame(U = I(list()), G = I(list()))
DF[[1,"U"]] <- U
DF[[2,"U"]] <- U
DF[[1,"G"]] <- G
DF[[2,"G"]] <- G
difference_byname(DF$U, DF$G)
DF \%>\% mutate(diffs = difference_byname(U, G))
}
