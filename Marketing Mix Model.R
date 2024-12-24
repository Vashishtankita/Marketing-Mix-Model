#ANKITA VASHISHT

install.packages("tseries")
## Load Packages and Set Seed
library(tseries)
set.seed(1) 
mmix <- read.csv("C:/Users/ankuv/Downloads/mmix_data.csv")
lapply(sapply(mmix,mean),round,2)

## Create Natural Log, Lag, and Weekday Variables
mmix$ln_quantity <- log(mmix$quantity)
mmix$ln_price <- log(mmix$price)
mmix$ln_digital_ad <- log(mmix$digital_ad)
mmix$ln_digital_search <- log(mmix$digital_search)
mmix$ln_print <- log(mmix$print+ 1)
## Some time periods have 0 spend
mmix$ln_tv <- log(mmix$tv)


names(mmix)


# Create lln_ columns
mmix$lln_quantity <- c(0, mmix$ln_quantity[1:length(mmix$ln_quantity)-1])
mmix$lln_digital_ad <- c(0, mmix$ln_digital_ad[1:length(mmix$ln_digital_ad)-1])
mmix$lln_digital_search <- c(0, mmix$ln_digital_search[1:length(mmix$ln_digital_search)-1])
mmix$lln_print <- c(0, mmix$ln_print[1:length(mmix$ln_print)-1])
mmix$lln_tv <- c(0, mmix$ln_tv[1:length(mmix$ln_tv)-1])



# Define cor_vars
cor_vars <- c("ln_quantity", "lln_quantity", "ln_price", "lln_digital_ad", "lln_digital_search", "lln_print", "lln_tv")

# Select the columns
cor_data <- mmix[cor_vars]


# Now you can define cor_vars
cor_vars <- c("ln_quantity", "lln_quantity", "ln_price", "lln_digital_ad", "lln_digital_search", "lln_print", "lln_tv")

# Select the columns
cor_data <- mmix[cor_vars]


mmix$lln_quantity <- c(0, mmix$ln_quantity[1:length(mmix$ln_quantity)-1])

mmix$weekdays <- weekdays(as.Date(mmix$date)) 

cor_vars <- c("ln_quantity", "lln_quantity", "ln_price", "lln_digital_ad", "lln_digital_search", "lln_print", "lln_tv")
cor_data <- mmix[cor_vars]
cor_table <- cor( cor_data)
round(cor_table,2)

mmix$ln_digital <- log(mmix$digital_ad + mmix$digital_search)

mmix_reg <- lm(ln_quantity ~ lln_quantity + ln_price + ln_digital + ln_print + ln_tv + factor(weekdays), data= mmix)
summary(mmix_reg)

mmix$pred_quantity <- exp(predict(mmix_reg)) 

## Name the file mmix_predicted.csv 
write.csv(mmix, file=("C:/Users/ankuv/Downloads/mmix_predicted.csv"))