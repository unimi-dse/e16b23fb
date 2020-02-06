#' plot_data
#'
#' Plots a graph of the closing price vector.
#'
#' @param "data" dataframe. The stock dataset that you want to used. If \code{NULL} (the default) selects TSLA  dataset.
#' @param "title" character. title that you want to assign to the graph.
#'
#' @return A graph of the stock price

#' @examples
#' plot_stockp()
#' plot_stockp(aapl)
#' plot_stockp(tsla,TSLA)
#' @export
#'
#'


plot_stockp <- function(data=NULL,title=""){
  if(is.null(data))
    data <-get_data()
  data %>%
    ggplot(aes(x = date, y = close)) +
    geom_line() +
    labs(title = title, y = "Closing Price", x = "Years") +
    theme_tq()
}
