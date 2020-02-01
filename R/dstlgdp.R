#' dstlgdp
#'
#' Performs Stl decomposition and plots the results.
#' @param gdp Time Series Object.
#' @return graph showing the time series decomposition
#'
#' @examples
#' dstlgdp(gdp)
#'
#' @export
dstlgdp <- function(gdp){
  fit1 <<- stl(gdp, s.window="periodic")
  plot(fit1, main="Decomposition by STL method")
}
