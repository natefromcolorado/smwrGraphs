% Generated by roxygen2 (4.1.0): do not edit by hand
% Please edit documentation in R/xyPlot.R
\docType{methods}
\name{xyPlot}
\alias{xyPlot}
\alias{xyPlot,factor,numeric-method}
\alias{xyPlot,numeric,numeric-method}
\title{Plot Data}
\usage{
xyPlot(x, y, Plot = list(), yaxis.log = FALSE, yaxis.rev = FALSE,
  yaxis.range = c(NA, NA), xaxis.log = FALSE, xaxis.range = c(NA, NA),
  ylabels = 7, xlabels = 7, xtitle = "", ytitle = "", caption = "",
  margin = c(NA, NA, NA, NA), ...)

\S4method{xyPlot}{numeric,numeric}(x, y, Plot = list(name = "", what =
  "points", type = "solid", width = "standard", symbol = "circle", filled =
  TRUE, size = 0.09, color = "black"), yaxis.log = FALSE, yaxis.rev = FALSE,
  yaxis.range = c(NA, NA), xaxis.log = FALSE, xaxis.range = c(NA, NA),
  ylabels = 7, xlabels = 7, xtitle = deparse(substitute(x)),
  ytitle = deparse(substitute(y)), caption = "", margin = c(NA, NA, NA,
  NA), ...)

\S4method{xyPlot}{factor,numeric}(x, y, Plot = list(name = "", what =
  "points", type = "solid", width = "standard", symbol = "circle", filled =
  TRUE, size = 0.09, color = "black"), yaxis.log = FALSE, yaxis.rev = FALSE,
  yaxis.range = c(NA, NA), xaxis.log = FALSE, xaxis.range = c(NA, NA),
  ylabels = 7, xlabels = "Auto", xtitle = "",
  ytitle = deparse(substitute(y)), caption = "", margin = c(NA, NA, NA,
  NA), xlabels.rotate = FALSE, ...)
}
\arguments{
\item{x}{the x-axis data to plot.}

\item{y}{the y-axis data to plot.}

\item{Plot}{control parameters of the plot.}

\item{yaxis.log}{logical, if \code{TRUE}, then log-transform the y axis.}

\item{yaxis.rev}{logical, if \code{TRUE}, then reverse the y axis.}

\item{yaxis.range}{set the range of the y-axis. See \bold{Details}.}

\item{xaxis.log}{logical, if \code{TRUE}, then log-transform the x axis.}

\item{xaxis.range}{set the range of the x-axis. See \bold{Details}.}

\item{ylabels}{set up y-axis labels. See \code{\link{linearPretty}} for
details.}

\item{xlabels}{set up x-axis labels. See \code{\link{linearPretty}} for
details.}

\item{xtitle}{the x-axis title (also called x-axis caption).}

\item{ytitle}{the y-axis title (also called y-axis caption).}

\item{caption}{the figure caption.}

\item{margin}{set up the plot area margins.}

\item{...}{additional arguments for specific methods.}

\item{xlabels.rotate}{logical, if \code{TRUE}, then rotate x-axis labels 90
degrees (perpendicular to the axis).}
}
\value{
Information about the graph
}
\description{
Create a line or scatter plot.
}
\details{
Setting \code{ylabels} or \code{xlabels} to 0 or negtive values will
suppress ticks and labels. If negative, then try to create that absolute value
number of labels. That can be useful for relative axes or specialized labeling.

For linear axes, the range can be set to virtually any pair of values. For
log axes, the choice of range is more resticted---for less than one log-cycle,
powers of whole numbers can be used; from 1 to about 3 log cycles, the choces
should be powers of 3 or 10; and for more than 3 log cycles, the range sould be
expressed only in powers of 10.
}
\note{
A call should be made to \code{setPage} to set up the graphics
environment before calling \code{xyPlot}.
}
\section{Methods}{
 \describe{
\item{signature(x = "numeric", y =
"numeric")}{ Create a line or scatter plot from numeric x and
y data. }
\item{signature(x = "factor", y ="numeric")")}{ Create a vertical
dot plot. Also useful for setting up a bar chart for discrete x-axis values. }
}
}
\examples{
\dontrun{
set.seed(1)
X <- rnorm(32)
Y <- X + rnorm(32)
AA.pl <- xyPlot(X, Y, Plot=list(color="cyan4"))
# For more details of xyPlot see
vignette(topic="GraphAdditions", package="smwrGraphs")
vignette(topic="GraphGallery", package="smwrGraphs")
vignette(topic="GraphSetup", package="smwrGraphs")
vignette(topic="LineScatter", package="smwrGraphs")
demo(topic="Coplot-complexScatterPlot", package="smwrGraphs")
demo(topic="TopAxisExample", package="smwrGraphs")
}
}
\seealso{
\code{\link{setPage}}, \code{\link{timePlot}},
\code{\link{colorPlot}}
}
\keyword{hplot}
\keyword{methods}

