#' laggdp
#'
#' Lags the time series object previously downloaded.
#' @param gdp Time Series Object.
#' @return A lagged Time Series Object
#'
#' @examples
#' laggdp(gdp)
#'
#' @export


laggdp <- function (gdp){
  lgdp <- lag(gdp, k = 1)
  head(lgdp)
}
