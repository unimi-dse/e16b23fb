#' detsgdp
#'
#' Performs Ets decomposition and plots the results.
#' @param gdp Time Series Object.
#' @return graph showing the time series decomposition
#'
#' @examples
#' detsgdp(gdp)
#'
#' @export

detsgdp <- function(gdp){
  fit2 <<- ets(gdp)
  plot(fit2)
}
