# Scrape list of Dow Stocks from: http://finance.yahoo.com/q/cp?s=^DJI+Components
# Input that list into a yahoo finance URL
# Download list with divident yield and last price




getDowKeyStatsYQL <- function()
{
  # YQL Query:
  # SELECT * FROM yahoo.finance.keystats 
  # where symbol in ("AXP", "BA", "CAT", "CSCO", "CVX", "DD", 
  #                  "DIS", "GE", "GS", "HD", "IBM", "INTC", 
  #                  "JNJ", "JPM", "KO", "MCD", "MMM", "MRK", 
  #                  "MSFT", "NKE", "PFE", "PG", "T", "TRV", 
  #                   "UNH", "UTX", "V", "VZ", "WMT", "XOM")
  
  # Yahoo Finance API:

  
}

########## Generic ####################

getCurrentDowList <- function()
{
  # Make this scrape from: http://finance.yahoo.com/q/cp?s=^DJI+Components
  "AXP+BA+CAT+CSCO+CVX+DD+DIS+GE+GS+HD+IBM+INTC+JNJ+JPM+KO+MCD+MMM+MRK+MSFT+NKE+PFE+PG+T+TRV+UNH+UTX+V+VZ+WMT+XOM"
}

getYahooApiQuotePropertyTable <- function()
{
  # Scrape from: https://code.google.com/p/yahoo-finance-managed/wiki/enumQuoteProperty
}

buildYahooFinanceApiURL <- function(symbolString=getCurrentDowList(), columnString="pyrp5p6m4m3")
{
  # Yahoo Finance API: https://code.google.com/p/yahoo-finance-managed/wiki/YahooFinanceAPIs
  # Howto: http://www.jarloo.com/yahoo_finance/
  
  # Column default: PrevClose(p), DivYield(y), P/E(r), P/S(p5), P/B(p6), 200ma (m4), 50ma(m3)
  paste("http://finance.yahoo.com/d/quotes.csv?s=", symbolString, "&f=", columnString, "&e=.csv", sep="")
}


############## Dow Dividend Strategy ###############
getDowDivYield <- function(dowList=getCurrentDowList())
{
  url = buildYahooFinanceApiURL()
  #http://finance.yahoo.com/d/quotes.csv?s=AXP+BA+CAT+CSCO+CVX+DD+DIS+GE+GS+HD+IBM+INTC+JNJ+JPM+KO+MCD+MMM+MRK+MSFT+NKE+PFE+PG+T+TRV+UNH+UTX+V+VZ+WMT+XOM&f=snyp&e=.csv
  #http://finance.yahoo.com/d/quotes.csv?s=DJI
}
