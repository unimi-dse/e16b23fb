#' forecast_arima
#'
#' Performs arima forecasting
#' @param "data" The stock dataset that you want to use. If \code{NULL} selects TSLA  dataset.
#'
#' @return Graph showing forecasted values
#'
#' @examples
#' forecast_arima()
#' forecast_arima(aapl)
#'
#' @export
forecast_arima <- function (data=NULL){
  if(is.null(data))
    data <-get_data()
  modelfit <- auto.arima(data$close, lambda = "auto")
  Box.test(modelfit$residuals, lag= 2, type="Ljung-Box")
  Box.test(modelfit$residuals, type="Ljung-Box")
  price_forecast <- forecast(modelfit, h=30)
  plot(price_forecast)
  head(price_forecast$mean)
}
