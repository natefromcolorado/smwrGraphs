% Generated by roxygen2 (4.1.0): do not edit by hand
% Please edit documentation in R/dotPlot.R
\docType{methods}
\name{dotPlot}
\alias{dotPlot}
\alias{dotPlot,Date-method}
\alias{dotPlot,numeric-method}
\title{Dot Plot}
\usage{
dotPlot(x, y, Plot = list(), yaxis.orient = "", yaxis.order = "",
  yaxis.grid = TRUE, xaxis.log = FALSE, xaxis.range = c(NA, NA),
  ylabels = "", xlabels = 7, xtitle = "", ytitle = "", caption = "",
  margin = c(NA, NA, NA, NA), ...)

\S4method{dotPlot}{numeric}(x, y, Plot = list(name = "", what = "points", type
  = "solid", width = "standard", symbol = "circle", filled = TRUE, size = 0.09,
  color = "black"), yaxis.orient = "table", yaxis.order = "none",
  yaxis.grid = TRUE, xaxis.log = FALSE, xaxis.range = c(NA, NA),
  ylabels = "full", xlabels = 7, xtitle = deparse(substitute(x)),
  ytitle = "", caption = "", margin = c(NA, NA, NA, NA),
  jitter.y = TRUE, ...)

\S4method{dotPlot}{Date}(x, y, Plot = list(name = "", what = "points", type =
  "solid", width = "standard", symbol = "circle", filled = TRUE, size = 0.09,
  color = "black"), yaxis.orient = "table", yaxis.order = "none",
  yaxis.grid = TRUE, xaxis.log = FALSE, xaxis.range = range(x, na.rm =
  TRUE), ylabels = "full", xlabels = "Auto", xtitle = "", ytitle = "",
  caption = "", margin = c(NA, NA, NA, NA), jitter.y = TRUE, ...)
}
\arguments{
\item{x}{the x-axis data.}

\item{y}{the y-axis data, expected to be be either character or factor.}

\item{Plot}{control parameters of the plot, see \code{link{setMultiPlot}}
and \bold{Details} for details.}

\item{yaxis.orient}{orientation of the y-axis values, must be either "table"
or "grid." "Table" is sorted from top to bottom, "grid" is sorted from
bottom to top.}

\item{yaxis.order}{the order of the y-axis values, must be one of "none,"
"ascending," or "descending."}

\item{yaxis.grid}{logical, if \code{TRUE}, then draw grid lines.}

\item{xaxis.log}{logical, if \code{TRUE}, then log-transform the x axis.}

\item{xaxis.range}{set the range of the x-axis. See \bold{Details}.}

\item{ylabels}{set up y-axis labels.}

\item{xlabels}{set up x-axis labels.}

\item{xtitle}{x-axis title (also called x-axis caption).}

\item{ytitle}{y-axis title (also called y-axis caption).}

\item{caption}{the figure caption.}

\item{margin}{the parameters of the margin.}

\item{...}{arguments for specific methods.}

\item{jitter.y}{logical, if \code{TRUE}, then adjust \code{y} values to reduce
overlap for each group.}
}
\value{
Information about the graph.
}
\description{
Construct a dot plot.
}
\details{
The \code{what} component of the \code{Plot} argument must be either
"points" or "none."

For linear axes, the range can be set to virtually any pair of values. For
log axes, the choice of range is more resticted---for less than one log-cycle,
powers of whole numbers can be used; from 1 to about 3 log cycles, the choces
should be powers of 3 or 10; and for more than 3 log cycles, the range sould be
expressed only in powers of 10.
}
\note{
A call should be made to \code{setPage} to set up the graphics
environment before calling \code{dotPlot}.
}
\section{Methods}{
 \describe{

\item{signature(x = "numeric"))}{ Create a dot plot for numeric
x-coordinate data and any (discrete) y-coordinate data. }
\item{signature(x = "Date"))}{ Create a dot plot for Date
x-coordinate data and any (discrete) y-coordinate data. } }
}
\examples{
\dontrun{
set.seed(1)
X <- runif(12)
Y <- LETTERS[1:12]
dotPlot(X, Y)
# For more details of dotPlot see
vignette(topic="LineScatter", package="smwrGraphs")
}
}
\seealso{
\code{\link{setPage}}, \code{\link{boxPlot}}
}
\keyword{hplot}
\keyword{methods}

