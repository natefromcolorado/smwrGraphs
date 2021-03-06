% Generated by roxygen2 (4.1.0): do not edit by hand
% Please edit documentation in R/addErrorBars.R
\name{addErrorBars}
\alias{addErrorBars}
\title{Errors Bars}
\usage{
addErrorBars(x, yup, ylo, Bars = list(name = "", cap = 0.09, width =
  "standard", color = "black"), current = list(yaxis.log = FALSE, yaxis.rev =
  FALSE, xaxis.log = FALSE))
}
\arguments{
\item{x}{the x-coordinate data. Missing values are permitted but result in
no bar.}

\item{yup}{the upper limit of the error bar. Missing values are permitted
but result in no bar.}

\item{ylo}{the lower limit of the error bar. Missing values are permitted
but result in no bar.}

\item{Bars}{parameters defining the characteristics of the error bars. See
\bold{Details}.}

\item{current}{the current plot information. Typically, this would be the
output from one of the graph creation functions like \code{xyPlot}.}
}
\value{
The current plot information is returned invisibly.
}
\description{
Add error bars to a graph.
}
\details{
The \code{Bars} argument must be a tagged list with these components:
\describe{ \item{name}{a name describing the data; used in the explanation.}
\item{cap}{the width of each cap on the error bar.} \item{width}{the width
of the lines drawn for the error bars.} \item{color}{the name of the color
to draw the error bars.} }
}
\note{
The error bars are plotted on top of any current symbol. To plot the
symbol on top of the error bar, start with the argument
\code{Plot=list(what="none")} in the original call to \code{xyPlot} or
\code{timePlot} and then add the symbols with a call to \code{addXY}. Note
that this is only necessary if the color of the symbol and the color of the
error bars are different.\cr
The symbol drawn for errors bars in the explantion does not have caps due to a
limitation in the system for creating the explanation.
}
\examples{
\dontrun{
set.seed(1)
X <- seq(1, 9, by=1.0)
Y1 <- runif(9)
Y2 <- runif(9)
Y <- (Y1 + Y2)/2
Ymin <- pmin(Y1, Y2)
Ymax <- pmax(Y1, Y2)
AA.pl <- xyPlot(X, Y, yaxis.range=c(0,1))
addErrorBars(X,Ymax, Ymin)
# For more details of addErrorBars see
vignette(topic="GraphGallery", package="smwrGraphs")
}
}
\seealso{
\code{\link{xyPlot}}, \code{\link{timePlot}}, \code{\link{addXY}},
\code{\link{xyPlot}}
}
\keyword{aplot}

