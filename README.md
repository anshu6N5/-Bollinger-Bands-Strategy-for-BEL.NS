# -Bollinger-Bands-Strategy-for-BEL.NS
This repository implements a **Bollinger Band-based trading strategy** in R for Bharat Electronics Limited (BEL.NS).   It uses **Yahoo Finance data** and provides **BUY / SELL / HOLD** recommendations along with a visualization chart.


## ✨ Features
- ✅ Fetches BEL.NS stock data using `quantmod`
- 📈 Calculates 20-day, 2 standard deviation Bollinger Bands
- 🟢 Generates BUY when price < Lower Band
- 🔴 Generates SELL when price > Upper Band
- ➖ Otherwise HOLD
- 📊 Saves chart with signals and bands.

- install.packages(c("quantmod", "TTR"))

- 📌Output
- 👉 Tomorrow Action: BUY

- Chart:

🔴 Red = Lower Band

⚫ Black = 20-day Moving Average

🟠 Orange = Upper Band

🟢 Green markers = Buy signals

🔴 Red markers = Sell signals.

Author 
Anshu Kumar.
