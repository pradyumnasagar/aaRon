#' plotDensities
#'
#' Plots multiple calls to \code{density} on the same plot
#'
#' @param s A \code{list} or \code{matrix} 
#' @param col Colours to use (optional)
#' @param xlim xlim to use, if not supplied are calculated from data ranges
#' @param ylim ylim to use, if not supplied are calculated from data ranges
#' @param na.rm Whether to remove NA values when calculating densites
#' @param main Title for the plot
#' @param xlab xlab to use
#' @param ylab ylab to use
#' @param ... Additional parameters passed on to \code{plot}
#' @return Called for the side effect of plotting
#'
#' @export
#' 
#' @author Aaron Statham <a.statham@@garvan.org.au>
plotDensities <- function(s, col=NULL, xlim=NULL, ylim=NULL, na.rm=TRUE, main="", xlab="", ylab="Relative Frequency", ...) {
    if (is.matrix(s)) s <- data.frame(s)
    if (!is.list(s)) s <- list(s)
    if (is.null(col)) col <- rainbow(length(s)) else stopifnot(length(s)==length(col))
    sD <- lapply(s, density, na.rm=na.rm)
    if (is.null(xlim)) xlim <- range(sapply(sD, function(x) range(x$x)))
    if (is.null(ylim)) ylim <- range(sapply(sD, function(x) range(x$y)))
    plot(0, type="n", xlim=xlim, ylim=ylim, main=main, xlab=xlab, ylab=ylab, ...)
    for (i in 1:length(sD)) lines(sD[[i]], col=col[i], ...)
}

