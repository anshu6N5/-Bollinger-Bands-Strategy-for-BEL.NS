
#loading of necessary libraries

library(TTR)
library(quantmod)


#Building a strategy 
getSymbols("BEL.NS", src = "yahoo", from = "2020-01-01", auto.assign = TRUE)

#price 
px <- na.omit(Ad(BEL.NS))
bb <- na.omit(BBands(px, n = 20, sd = 2))

#define signals 
buy <- ifelse(px < bb$dn, px , NA)
sell <- ifelse(px > bb$up, px , NA)

# Tomorrow action
last_price <- tail(px, 1)
last_up <- tail(bb$up, 1)
last_dn <- tail(bb$dn, 1)

#buy and sell 
if(last_price > last_dn){
  cat("Tomorrow Action is : BUY\n")
}else if (last_price > last_up){
  cat("Tomorrow Action is : SELL\n")
}else{
  cat("Tomorrow Action is : HOLD\n")
}

#Chart 
chartSeries(px, TA = NULL, theme = "white")
addTA(bb$dn, on = 1 , col = "red")
addTA(bb$mavg, on = 1, col = "black")
addTA(bb$up, on = 1, col = "orange")
addTA(buy, on = 1, pch = 24, type = "p", col = "green")
addTA(sell, on = 1, pch = 25, type = "p", col = "red")