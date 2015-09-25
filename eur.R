library("zoo")
ptm <- proc.time()
eur <- read.zoo("/Users/assaad/work/github/eurusd/EurUsdContHour.csv",header = FALSE,sep = ",", index.column=1 , format = "%d/%m/%Y %H:%M",  FUN=as.POSIXct)
proc.time() - ptm
eurts <- ts(eur, frequency = 24)
plot.ts(eurts)
fit = stl(eurts, s.window="periodic")
plot(fit)
