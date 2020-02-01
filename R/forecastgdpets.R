#' forecastgdpets
#'
#' Performs forecast of the ets object and plots the results.
#' @param gdp Time Series Object.
#' @return graph showing the forecasted values
#'
#' @examples
#' forecastgdpets(gdp)
#'
#' @export
forecastgdpets <- function(gdp){
  n <- 12
  f2 <- forecast(fit2,h=n)
  plot(f2)
}
