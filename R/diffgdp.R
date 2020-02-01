#' diffgdp
#'
#' Takes the first difference of the time series object previously downloaded.
#' @param gdp Time Series Object.
#' @return A differentiated Time Series Object
#'
#' @examples
#' diffgdp(gdp)
#'
#' @export


diffgdp <- function(gdp){
  dgdp <- (gdp - lag(gdp, -1))
  head(dgdp)
}
