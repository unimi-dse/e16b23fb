This package returns stock price data from Yahoo Finance, plots detailed
graphs and performs forecasting using time series analisys or neural
networks.

Installation
------------

    devtools::install_github('unimi-dse/e16b23fb')

Usage
-----

    require(stockforecasting)

*You have to use the first get\_data(“id”) function specifing your Yahoo
Finance Ticker as the argument and storing the results in a variable
that you will use as argument for the other functions. If you don’t
store any data and don’t specify any argument it uses TSLA data*

### Functions

    get_data()

**Download the dataset**

    plot_stockp()

**Plot the closing price of selected stock**

    plot_zoom()

**Plot a zoomed graph of the last 8 weeks**

    plot_ema()

**Plot a graph that shows the EMA’s**

    forecast_arima()

**Perform ARIMA model forecasting**

    train_arima()

**Train ARIMA model**

    forecast_NN

**Perform forecasting with a Single Layer Neural Network Model**
