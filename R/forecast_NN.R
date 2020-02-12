#' forecast_NN
#'
#' Performs a neural network forecasting
#' @param data dataframe. The stock dataset that you want to use. If \code{NULL} (the default) selects TSLA  dataset.
#'
#' @return Dataframe of the forecasted values and their graph
#'
#' @examples
#' forecast_NN()
#' forecast_NN(aapl)
#'
#' @export

forecast_NN <- function(data=NULL) {
  if(is.null(data))
    data <-get_data()
  alpha <- 1.5^(-10)
  hn <- length(data$close)/(alpha*(length(data$close)+30))
  lambda <- forecast::BoxCox.lambda(data$close)
  dnn_pred <- forecast::nnetar(data$close, size= hn, lambda = lambda)
  dnn_forecast <- forecast::forecast(dnn_pred, h= 30, PI = TRUE)
  plot(dnn_forecast)
  return(dnn_forecast)
}
