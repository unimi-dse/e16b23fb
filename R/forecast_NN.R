#' forecast_NN
#'
#' Performs a neural network forecasting
#' @param "data" The stock dataset that you want to use. If \code{NULL} (the default) selects TSLA  dataset.
#'
#' @return graph showing forecasted values
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
  lambda <- BoxCox.lambda(data$close)
  dnn_pred <- nnetar(data$close, size= hn, lambda = lambda)
  dnn_forecast <- forecast(dnn_pred, h= 30, PI = TRUE)
  plot(dnn_forecast)
}
