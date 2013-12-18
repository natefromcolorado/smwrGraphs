# add x,y data 
#
# Coding History:
#    2008Jun27 DLLorenz Original coding.
#    2010Nov20 DLLorenz Begin modifications for R
#    2011Apr16 DLLorenz Added complete complement of args to setPlot
#    2011Jun17 DLLorenz fixed date conversion
#    2011Oct24 DLLorenz fixed call to renderY and tweak for package
#    2012Aug28 DLLorenz dots for future methods
#    2012Sep27 DLLorenz Made generic
#    2012Sep28          This version.
#

# For signature("ANY", "character") and signature("ANY", "character"),
#  add jitter.y option as done with dotPlot.

setGeneric("addXY", function(x, y, ...) standardGeneric("addXY"))

setMethod("addXY", signature("ANY", "numeric"), 
function(x, y, # data
         Plot=list(name="", what='lines', type='solid',
           width='standard', symbol='circle', filled=TRUE,
           size=0.09, color='black'), # plot controls
         current=list(yaxis.log=FALSE, yaxis.rev=FALSE,
           xaxis.log=FALSE), # current plot parameters
         right=FALSE, right.log=FALSE, right.rev=FALSE,
         right.range=c(NA,NA), ## right-axis controls
         right.labels=7, right.title='') { # right-axis labels and titles
  ## add a simple (single line or scatter) x-y plot
  ## arguments:
  ##   x - the x-axis data
  ##   y - the y-axis data to plot
  ##   Plot - parameters of the plot
  ##   current - the current plot information
  ##   right - set up new right-axis
  ##   right.log, right.rev - log or reverse data for right 
  ##   right.range - set right-axis range
  ##   right.labels - control labels
  ##   right.title - right-axis title
  ##
  if(right) { # set up right axis
    rax <- setAxis(y, right.range, right.log, right.rev, right.labels)
    y <- rax$data
    rax <- rax$dax
    ## reset y-axis limits
    usr <- par('usr')
    usr[3:4] <- rax$range
    par(usr=usr)
    ## label right axis
    renderY(rax, left=list(ticks=FALSE, labels=FALSE), right=list(ticks=TRUE,
                                                         labels=TRUE),
            lefttitle='', righttitle=right.title)
    ## update current
    current$yaxis.log <- right.log
    current$yaxis.rev <- right.rev
  }
  else { # Use current y axis
    y <- numericData(y, lev=current$yaxis.lev)
    y <- transData(y, current$yaxis.log, current$yaxis.rev,
                   current$ytrans, current$ytarg)
  }
  x <- numericData(x, lev=current$xaxis.lev) # Convert dates to consistent numeric
  x <- transData(x, current$xaxis.log, FALSE,
                 current$xtrans, current$xtarg)
  Plot <- setPlot(Plot, name="", what='lines', type='solid',
                  width='standard', symbol='circle', filled=TRUE,
                  size=0.09, color='black') # force defaults if not set
  explan <- setExplan(Plot, old=current$explanation) # add info to set up explanation
  plotPars <- explan$current
  lines(x, y, type=plotPars$type, lwd=plotPars$lwd, lty=plotPars$lty,
        pch=plotPars$pch, cex=plotPars$cex, col=plotPars$col, bg=plotPars$col)
  current$x <- x
  current$y <- y
  current$explanation <- explan
  invisible(current)
}
)