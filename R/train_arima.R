#' train_arima
#'
#' Trains arima model
#' @param data The stock dataset that you want to use. If \code{NULL} (the default) selects TSLA dataset.
#' @return Graph showing the mean tendency of our forecasting over the test set close price move
#'
#' @examples
#' train_arima()
#' train_arima(aapl)
#'
#' @export


train_arima <- function (data=NULL){
  if(is.null(data))
    data <-get_data()
  N = length(data$close)
  n = as.integer( 0.7*N)
  train = data$close[1:n]
  test  = data$close[(n+1):N]
  trainarimafit <- auto.arima(train, lambda = "auto")
  predlen=length(test)
  trainarimafit <- forecast(trainarimafit, h=predlen)
  meanvalues <- as.vector(trainarimafit$mean)
  pr <- as.vector(test)
  plot(meanvalues, type= "l", col= "red")
  lines(pr, type = "l")
}
