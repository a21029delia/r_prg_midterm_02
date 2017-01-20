EconGrowthRateIncome <- read.csv(file.choose(), header = T)
EconGrowthRateIncome
# 散佈圖
plot(EconGrowthRateIncome$AverageIncome, EconGrowthRateIncome$EconGrowthRate, main = "Econ Growth Rate and Average Income", xlab = "Average Income", ylab = "Growth Rate")

# 線圖
plot(EconGrowthRateIncome$AverageIncome, EconGrowthRateIncome$EconGrowthRate, main = "Econ Growth Rate and Average Income", xlab = "Average Income", ylab = "Growth Rate", type = "l")

# 直方圖
par(mfrow = c(1, 2))
hist(EconGrowthRateIncome$AverageIncome, main = "Distribution of Average Income", xlab = "Average Income")
hist(EconGrowthRateIncome$EconGrowthRate, main = "Distribution of Growth Rate", xlab = "Growth Rate")

# 盒鬚圖
par(mfrow = c(1, 2))
boxplot(EconGrowthRateIncome$AverageIncome, main = "Distribution of Average Income")
boxplot(EconGrowthRateIncome$EconGrowthRate, main = "Distribution of EconGrowthRate")

# 長條圖
str(EconGrowthRateIncome)
table(factor(EconGrowthRateIncome$Type.RateRange.))
barplot(table(factor(EconGrowthRateIncome$Type.RateRange.)), main = "Rate Range counts by types", xlab = "Rate Range Type", ylab = "Type counts")
