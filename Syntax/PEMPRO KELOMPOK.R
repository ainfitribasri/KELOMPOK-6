# Library
library(readxl)
library(psych)
library(fastmatrix)
library(dplyr)
library(car)
library(lmtest)
library(ggplot2)

# Import Data
data <- read_excel("DATA PEMPRO KELOMPOK.xlsx")
## Convert angka format koma menjadi titik
data[, -1] <- lapply(data[, -1], function(x) as.numeric(gsub(",", ".", x)))
data[, -1] <- data[, -1] / 100

# Model Awal
## Uji Signifikansi Parsial (Uji t)
summary(model)$coefficients
## Uji Signifikansi Simultan (Uji F)
summary(model)$f

# Seleksi Variabel
## Backward Stepwise Regression
model_backward <- stats::step(model, direction = "backward")
## Bandingkan AIC/BIC
AIC(model, model_backward)
BIC(model, model_backward)

# Model Akhir
## Statistik deskriptif
desc <- psych::describe(data)
print(desc)
model_backward
## Uji Kelayakan Model
summary(model_backward)$f
## Goodness of Fit
summary(model_backward)$r.squared
summary(model_backward)$adj.r.squared

# Uji Asumsi Klasik
## Uji Normalitas
shapiro.test(residuals(model_backward))
### QQ-Plot
qq_data <- data.frame(
  sample = residuals(model_backward)
)
ggplot(qq_data, aes(sample = sample)) +
  stat_qq(color = "#1F78B4", size = 2, alpha = 0.7) +
  stat_qq_line(color = "red", size = 1) +
  labs(
    title = "QQ Plot Residual Model",
    x = "Theoretical Quantiles",
    y = "Sample Quantiles"
  ) +
  theme_minimal(base_size = 14) +
  theme(
    plot.title = element_text(face = "bold", hjust = 0.5),
    panel.grid.minor = element_blank()
  )

## Uji Heteroskedastisitas
bptest(model_backward)
### Residual vs Fitted Plot
res_data <- data.frame(
  fitted = model_backward$fitted.values,
  residuals = residuals(model_backward)
)
ggplot(res_data, aes(x = fitted, y = residuals)) +
  geom_point(color = "#1F78B4", size = 2, alpha = 0.7) +
  geom_hline(yintercept = 0, color = "red", size = 1) +
  labs(
    title = "Residual vs Fitted Plot",
    x = "Nilai Prediksi (Fitted)",
    y = "Residual"
  ) +
  theme_minimal(base_size = 14) +
  theme(
    plot.title = element_text(face = "bold", hjust = 0.5),
    panel.grid.minor = element_blank()
  )
## Uji Multikolinearitas
vif(model_backward)



