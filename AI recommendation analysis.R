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

#Does AI Personalization predict Customer Lifetime Value?
model1 <- lm(
  CLV ~ AIP,
  data = data
)

summary(model1)

install.packages("ggplot2")
library(ggplot2)

colnames(data)

library(ggplot2)
library(dplyr)
library(tidyr)

# GRAPH 1 - CONSTRUCT COMPARISON BAR PLOT
construct_summary <- data.frame(
  Construct = c("(AIP)", 
                "(CE)", 
                "(CR)", 
                "(CLV)", 
                "(AT)"),
  Mean_Score = c(
    mean(data$AIP, na.rm = TRUE),
    mean(data$CE, na.rm = TRUE),
    mean(data$CR, na.rm = TRUE),
    mean(data$CLV, na.rm = TRUE),
    mean(data$AT, na.rm = TRUE)
  )
)

plot_constructs <- ggplot(construct_summary, aes(x = reorder(Construct, -Mean_Score), y = Mean_Score, fill = Construct)) +
  geom_bar(stat = "identity", width = 0.55, show.legend = FALSE) +
  geom_text(aes(label = sprintf("%.2f", Mean_Score)), vjust = -0.5, fontface = "bold", size = 4.5) +
  scale_fill_brewer(palette = "Set2") +
  theme_minimal(base_size = 12) +
  coord_cartesian(ylim = c(1, 7)) +
  labs(
    title = "E-Commerce AI Impact: Core Construct Mean Scores",
    subtitle = "Evaluated on a 7-Point Likert Scale (N = 224)",
    x = "Construct",
    y = "Average Rating (1 to 7)"
  ) +
  theme(
    plot.title = element_text(face = "bold", size = 14),
    axis.text.x = element_text(angle = 15, hjust = 1)
  )
print(plot_constructs)
ggsave("construct_means_comparison.png", plot = plot_constructs, width = 9, height = 5, dpi = 300)

# GRAPH 2: DEMOGRAPHICS (GENDER & AGE)
demo_df <- data %>%
  rename(Gender = `D1. Gender`, Age_Group = Age) %>%
  filter(!is.na(Gender) & !is.na(Age_Group)) %>%
  mutate(
    # Clean encoding artifacts and replace with a clean standard hyphen '-'
    Age_Group = gsub("[^0-9]", "-", Age_Group),
    Age_Group = gsub("-+", "-", Age_Group),        # Fix any multiple dashes
    Age_Group = gsub("^-|-$", "", Age_Group)       # Trim leading or trailing dashes
  )

plot_demographics <- ggplot(demo_df, aes(x = Age_Group, fill = Gender)) +
  geom_bar(position = "dodge", width = 0.6) +
  geom_text(stat = "count", aes(label = after_stat(count)), position = position_dodge(0.6), vjust = -0.4, size = 3.8) +
  scale_fill_manual(values = c("#2b6cb0", "#dd6b20", "#38a169")) +
  theme_minimal(base_size = 12) +
  labs(
    title = "Demographic Distribution of Survey Respondents",
    subtitle = "Respondent Breakdown by Age Group and Gender",
    x = "Age Group",
    y = "Number of Respondents",
    fill = "Gender"
  ) +
  theme(
    plot.title = element_text(face = "bold", size = 14),
    legend.position = "top"
  )

print(plot_demographics)
ggsave("demographics_breakdown.png", plot = plot_demographics, width = 8, height = 5, dpi = 300)
