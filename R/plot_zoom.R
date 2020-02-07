#' plot_zoom
#'
#' Plots last 8 weeks graph of the timeseries.
#'
#' @param "data" dataframe. The stock dataset that you want to use. If \code{NULL} (the default) selects TSLA dataset.
#'
#' @return A graph of the last 8 weeks
#'
#' @examples
#' plot_zoom()
#' plot_zoom(aapl)
#' @export
#'
#'
plot_zoom <- function(data=NULL, end=Sys.Date()){
  if(is.null(data))
    data <-get_data()

  data %>%
    ggplot(aes(x = date, y = close)) +
    geom_candlestick(aes(open = open, high = high, low = low, close = close)) +
    labs(title = "Candlestick Chart",
         subtitle = "Zoomed in using coord_x_date",
         y = "Closing Price", x = "") +
    coord_x_date(xlim = c(end - weeks(8), end),
                 ylim = c(0, 900)) +
    theme_tq()
}

