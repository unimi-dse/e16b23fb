#' plot_ema
#'
#' Plots the last 6 months with Exponential Moving Average
#'
#' @param data dataframe. The stock dataset that you want to use. If \code{NULL} (the default) selects TSLA  dataset.
#'
#' @return A graph of the last 6 months price and EMA's
#'
#' @examples
#' plot_ema()
#' plot_ema(aapl)
#'
#'
#' @export
#'
#'

plot_ema <- function(data=NULL, end=Sys.Date()) {
  if(is.null(data))
    data <-get_data()
  data %>%
    ggplot(aes(x = date, y = close)) +
    geom_candlestick(aes(open = open, high = high, low = low, close = close)) +
    geom_ma(ma_fun = EMA, n = 50, linetype = 5, size = 0.70) +
    geom_ma(ma_fun = EMA, n = 200, color = "red", size = 0.70) +

    labs(title = "Candlestick Chart",
         subtitle = "50 and 200-Day EMA",
         y = "Closing Price", x = "Time") +
    coord_x_date(xlim = c(end - weeks(24), end),
                 ylim = c(min(data$close), max(data$close)+(max(data$close)/100)*10)) +
    theme_tq()
}
