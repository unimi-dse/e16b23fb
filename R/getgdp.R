#' getgdp
#'
#' Retrieve Fred GDP timeseries object anb stores it in a global variable called gdp.
#'
#' @return A Time Series Object called gdp
#'
#' @examples
#' getgdp()
#'
#' @export
#'
#'

getgdp <- function(){
  gdp <<- Quandl::Quandl("FRED/GDP", type="ts",start_date="1990-12-31", end_date="2019-12-31", api_key="hw_qM1k25u9Wcvqjr6V1")
  return(head(gdp))

}
