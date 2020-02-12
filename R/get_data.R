#' get_data
#'
#' Retrieve stock dataset with date, open, close, high, low,volume and adjusted price.
#'
#' You have to store the result in a variable in order to be able to perform further analisys
#' with the stock that you are intrested in
#'
#' @param id character. Ticker of the desired stock. If \code{NULL} selects TSLA  dataset.
#' @param from date. The date you want to start. If \code{NULL} selects "2012-09-01"
#' @param to date. The date you want to stop. If \code{NULL} selects today's date
#' @return A dataset of the selected stock
#'
#'
#' @examples
#' get_data()
#' get_data("AAPL")
#' aapl <- get_data("AAPL")
#' stockname <- get_data("id")
#' @export
#'
#'

get_data <- function(id = "TSLA", from = "2012-09-01", to = Sys.Date()){
  data <- tidyquant::tq_get(id, get = "stock.prices", from = from, to = to)

  return(data)

}
