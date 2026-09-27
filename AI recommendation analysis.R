install.packages("readxl")
install.packages("dplyr")
install.packages("psych")
install.packages("car")
install.packages("corrplot")
install.packages("GPArotation")
install.packages("GPArotation")
install.packages("writexl")
library(readxl)
View(data)
head(data)
tail(data)
#Check missing values
is.na(data)
#Total missing values
sum(is.na(data))
#Missing values column-wise
colSums(is.na(data))
# Remove duplicates
data <- data[!duplicated(data), ]
#Descriptive statistics
mean(data$AIP1, na.rm = TRUE)
mean(data$AIP2, na.rm = TRUE)
mean(data$AIP3, na.rm = TRUE)
mean(data$AIP4, na.rm = TRUE)
mean(data$CE1, na.rm = TRUE)
mean(data$CE2, na.rm = TRUE)
mean(data$CE3, na.rm = TRUE)
mean(data$CE4, na.rm = TRUE)
mean(data$CE5, na.rm = TRUE)
mean(data$CE6, na.rm = TRUE)
# Gender frequency
table(data[[3]])
# Gender percentage
prop.table(table(data[[3]])) * 100
# Age frequency
table(data[[4]])
# Age percentage
prop.table(table(data[[4]])) * 100
# Purchase frequency
table(data[[5]])
# Purchase percentage
prop.table(table(data[[5]])) * 100

library(readxl)
library(dplyr)
library(psych)
library(car)
library(corrplot)
library(GPArotation)
library(writexl)
# AI personalization (Reliability Analysis)
alpha(data[, c(
  "AIP1", "AIP2", "AIP3", "AIP4"
)])
# Customer Engagement
alpha(data[, c(
  "CE1", "CE2", "CE3", "CE4", "CE5", "CE6"
)])

# Customer Retention
alpha(data[, c(
  "CR1", "CR2", "CR3", "CR4"
)])

# Customer Lifetime Value
alpha(data[, c(
  "CLV1", "CLV2", "CLV3", "CLV4"
)])

# Algorithmic Transparency
alpha(data[, c(
  "AT1", "AT2", "AT3", "AT4"
)])


# AI Personalisation(CONSTRUCT SCORES)
data$AIP <- rowMeans(
  data[, c("AIP1", "AIP2", "AIP3", "AIP4")],
  na.rm = TRUE
)

# Customer Engagement
data$CE <- rowMeans(
  data[, c("CE1", "CE2", "CE3", "CE4", "CE5", "CE6")],
  na.rm = TRUE
)

# Customer Retention
data$CR <- rowMeans(
  data[, c("CR1", "CR2", "CR3", "CR4")],
  na.rm = TRUE
)

# Customer Lifetime Value
data$CLV <- rowMeans(
  data[, c("CLV1", "CLV2", "CLV3", "CLV4")],
  na.rm = TRUE
)

# Algorithmic Transparency
data$AT <- rowMeans(
  data[, c("AT1", "AT2", "AT3", "AT4")],
  na.rm = TRUE
)

#check construct scores
head(data[, c("AIP", "CE", "CR", "CLV", "AT")])

#Correlation
cor(
  data[, c("AIP", "CE", "CR", "CLV", "AT")],
  use = "complete.obs"
)
# Individual relationship
cor.test(data$AIP, data$CE)

#ANOVA
names(data)[4] <- "Age"
#AI personalization
anova_AIP <- aov(
  AIP ~ Age,
  data = data
)

summary(anova_AIP)

#Customer Engagement
anova_CE <- aov(
  CE ~ Age,
  data = data
)

summary(anova_CE)

#Customer Retention
anova_CR <- aov(
  CR ~ Age,
  data = data
)

summary(anova_CR)

#Customer Lifetime Value
anova_CLV <- aov(
  CLV ~ Age,
  data = data
)

summary(anova_CLV)

#Algorithmic Transparency
anova_AT <- aov(
  AT ~ Age,
  data = data
)

summary(anova_AT)

#T-test (Gender categories)
table(data[[3]])

# Gender comparison
data_gender <- subset(data, Gender %in% c("Male", "Female"))

t.test(AIP ~ Gender, data = data_gender)

#Do AI Personalization, Customer Engagement, Customer Retention and Algorithmic Transparency predict Customer Lifetime Value?
model <- lm(
  CLV ~ AIP + CE + CR + AT,
  data = data
)

summary(model)

#Does AI Personalisation predict Customer Lifetime Value?
model1 <- lm(
  CLV ~ AIP,
  data = data
)

summary(model1)

