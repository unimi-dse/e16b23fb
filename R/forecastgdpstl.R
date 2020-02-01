#' forecastgdpstl
#'
#' Performs forecast of the stl and plots the results.
#' @param gdp Time Series Object.
#' @return graph showing the forecasted values
#'
#' @examples
#' forecastgdpstl(gdp)
#'
#' @export

forecastgdpstl <- function(gdp){
  n <- 12
  f1 <- forecast(fit1,h=n)
  plot(f1)
}
