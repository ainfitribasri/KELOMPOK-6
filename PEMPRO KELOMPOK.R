data <- read.csv2("C:/Users/lenovo/Downloads/DATA PEMPRO KELOMPOK.csv", header = TRUE)
data

str(data)
summary(data)

model <- lm(ASI ~ ST + PM + BW + ASL + AML + LS, data = data)
summary(model)

library(car)
vif(model)           # Uji multikolinearitas
plot(model)          # Diagnostik residual

library(lmtest)
bptest(model)        # Uji heteroskedastisitas Breusch-Pagan
shapiro.test(resid(model))  # Uji normalitas residual

