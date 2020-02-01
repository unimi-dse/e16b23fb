#' plotgdp
#'
#' plots the time series.
#' @param gdp Time Series Object.
#' @return a graph of the time series
#'
#' @examples
#' plot(gdp)
#'
#' @export

plotgdp <- function(gdp){
  plot(gdp,main= "USA GDP 1990-2020", col="blue",xlab="Year")
}
