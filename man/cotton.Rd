\name{cotton}
\alias{cotton}
\docType{data}
\title{ Data of Cotton }
\description{
  Data of Cotton collected in experiments of two localities in Lima and Pisco, Peru.
}
\usage{data(cotton)}
\format{
  A data frame with 96 observations on the following 5 variables.
  \describe{
    \item{\code{site}}{a factor with levels \code{Lima} \code{Pisco}}
    \item{\code{block}}{a factor with levels \code{I} \code{II} \code{III} \code{IV} \code{V} \code{VI}}
    \item{\code{lineage}}{a numeric vector}
    \item{\code{epoca}}{a numeric vector}
    \item{\code{yield}}{a numeric vector}
  }
}

\source{
  Book spanish: M�todos estad�sticos para la investigaci�n.
  Autor: Calzada Benza
  Universidad Nacional Agraria - La Molina - Peru..
}
\references{
  Book spanish: M�todos estad�sticos para la investigaci�n.
  Autor: Calzada Benza
  Universidad Nacional Agraria - La Molina - Peru.
}
\examples{
library(agricolae)
data(cotton)
str(cotton)
}
\keyword{datasets}