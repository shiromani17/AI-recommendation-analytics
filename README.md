[Workspace loaded from ~/.RData] 
#OUTPUT

> View(data)
> head(data)
# A tibble: 6 × 32
  S1. Have you interacte…¹ S2. Do you have a ge…² `D1. Gender` Age   D3. Frequency of Onl…³  AIP1  AIP2  AIP3  AIP4   CE1   CE2
  <chr>                    <chr>                  <chr>        <chr> <chr>                  <dbl> <dbl> <dbl> <dbl> <dbl> <dbl>
1 Yes                      NA                     Male         35â€… 2â€“3 times a month        6     4     6     4     3     6
2 Yes                      NA                     Male         45â€… Less than once a month     7     7     7     7     5     7
3 Yes                      NA                     Male         35â€… Multiple times a week      6     7     6     5     5     6
4 Yes                      NA                     Male         35â€… Multiple times a week      6     7     6     5     5     6
5 No                       NA                     Male         18â€… 2â€“3 times a month        2     2     2     2     2     2
6 Yes                      NA                     Male         18â€… Less than once a month     6     6     6     6     6     6
# ℹ abbreviated names:
#   ¹​`S1. Have you interacted with AI-driven product recommendations on e-commerce platforms in the last 3 months?`,
#   ²​`S2. Do you have a general interest in, or a positive attitude towards, utilising AI features to assist your online shopping experience?`,
#   ³​`D3. Frequency of Online Purchases`
# ℹ 21 more variables: CE3 <dbl>, CE4 <dbl>, CE5 <dbl>, CE6 <dbl>, CR1 <dbl>, CR2 <dbl>, CR3 <dbl>, CR4 <dbl>, CLV1 <dbl>,
#   CLV2 <dbl>, CLV3 <dbl>, CLV4 <dbl>, AT1 <dbl>, AT2 <dbl>, AT3 <dbl>, AT4 <dbl>, AIP <dbl>, CE <dbl>, CR <dbl>, CLV <dbl>,
#   AT <dbl>
> tail(data)
# A tibble: 6 × 32
  S1. Have you interacte…¹ S2. Do you have a ge…² `D1. Gender` Age   D3. Frequency of Onl…³  AIP1  AIP2  AIP3  AIP4   CE1   CE2
  <chr>                    <chr>                  <chr>        <chr> <chr>                  <dbl> <dbl> <dbl> <dbl> <dbl> <dbl>
1 Yes                      Yes                    Female       18â€… 2â€“3 times a month        7     7     5     6     4     5
2 Yes                      No                     Male         18â€… Less than once a month     3     5     3     3     3     3
3 Yes                      Yes                    Male         18â€… 2â€“3 times a month        4     5     5     5     4     4
4 Yes                      Yes                    Male         18â€… 2â€“3 times a month        4     3     1     2     3     4
5 No                       Yes                    Male         25â€… Less than once a month     6     6     6     6     3     6
6 Yes                      Yes                    Female       18â€… Less than once a month     5     2     1     1     2     2
# ℹ abbreviated names:
#   ¹​`S1. Have you interacted with AI-driven product recommendations on e-commerce platforms in the last 3 months?`,
#   ²​`S2. Do you have a general interest in, or a positive attitude towards, utilising AI features to assist your online shopping experience?`,
#   ³​`D3. Frequency of Online Purchases`
# ℹ 21 more variables: CE3 <dbl>, CE4 <dbl>, CE5 <dbl>, CE6 <dbl>, CR1 <dbl>, CR2 <dbl>, CR3 <dbl>, CR4 <dbl>, CLV1 <dbl>,
#   CLV2 <dbl>, CLV3 <dbl>, CLV4 <dbl>, AT1 <dbl>, AT2 <dbl>, AT3 <dbl>, AT4 <dbl>, AIP <dbl>, CE <dbl>, CR <dbl>, CLV <dbl>,
#   AT <dbl>
> #Check missing values
> is.na(data)
       S1. Have you interacted with AI-driven product recommendations on e-commerce platforms in the last 3 months?
  [1,]                                                                                                        FALSE
  [2,]                                                                                                        FALSE
  [3,]                                                                                                        FALSE
  [4,]                                                                                                        FALSE
  [5,]                                                                                                        FALSE
  [6,]                                                                                                        FALSE
  [7,]                                                                                                        FALSE
  [8,]                                                                                                        FALSE
  [9,]                                                                                                        FALSE
 [10,]                                                                                                        FALSE
 [11,]                                                                                                        FALSE
 [12,]                                                                                                        FALSE
 [13,]                                                                                                        FALSE
 [14,]                                                                                                        FALSE
 [15,]                                                                                                        FALSE
 [16,]                                                                                                        FALSE
 [17,]                                                                                                        FALSE
 [18,]                                                                                                        FALSE
 [19,]                                                                                                        FALSE
 [20,]                                                                                                        FALSE
 [21,]                                                                                                        FALSE
 [22,]                                                                                                        FALSE
 [23,]                                                                                                        FALSE
 [24,]                                                                                                        FALSE
 [25,]                                                                                                        FALSE
 [26,]                                                                                                        FALSE
 [27,]                                                                                                        FALSE
 [28,]                                                                                                        FALSE
 [29,]                                                                                                        FALSE
 [30,]                                                                                                        FALSE
 [31,]                                                                                                        FALSE
       S2. Do you have a general interest in, or a positive attitude towards, utilising AI features to assist your online shopping experience?
  [1,]                                                                                                                                    TRUE
  [2,]                                                                                                                                    TRUE
  [3,]                                                                                                                                    TRUE
  [4,]                                                                                                                                    TRUE
  [5,]                                                                                                                                    TRUE
  [6,]                                                                                                                                    TRUE
  [7,]                                                                                                                                    TRUE
  [8,]                                                                                                                                    TRUE
  [9,]                                                                                                                                    TRUE
 [10,]                                                                                                                                    TRUE
 [11,]                                                                                                                                    TRUE
 [12,]                                                                                                                                    TRUE
 [13,]                                                                                                                                    TRUE
 [14,]                                                                                                                                    TRUE
 [15,]                                                                                                                                    TRUE
 [16,]                                                                                                                                    TRUE
 [17,]                                                                                                                                    TRUE
 [18,]                                                                                                                                    TRUE
 [19,]                                                                                                                                    TRUE
 [20,]                                                                                                                                    TRUE
 [21,]                                                                                                                                    TRUE
 [22,]                                                                                                                                    TRUE
 [23,]                                                                                                                                    TRUE
 [24,]                                                                                                                                    TRUE
 [25,]                                                                                                                                    TRUE
 [26,]                                                                                                                                    TRUE
 [27,]                                                                                                                                    TRUE
 [28,]                                                                                                                                    TRUE
 [29,]                                                                                                                                    TRUE
 [30,]                                                                                                                                    TRUE
 [31,]                                                                                                                                    TRUE
       D1. Gender   Age D3. Frequency of Online Purchases  AIP1  AIP2  AIP3  AIP4   CE1   CE2   CE3   CE4   CE5   CE6   CR1
  [1,]      FALSE FALSE                             FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
  [2,]      FALSE FALSE                             FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
  [3,]      FALSE FALSE                             FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
  [4,]      FALSE FALSE                             FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
  [5,]      FALSE FALSE                             FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
  [6,]      FALSE FALSE                             FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
  [7,]      FALSE FALSE                             FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
  [8,]      FALSE FALSE                             FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
  [9,]      FALSE FALSE                             FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
 [10,]      FALSE FALSE                             FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
 [11,]      FALSE FALSE                             FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
 [12,]      FALSE FALSE                             FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
 [13,]      FALSE FALSE                             FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
 [14,]      FALSE FALSE                             FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
 [15,]      FALSE FALSE                             FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
 [16,]      FALSE FALSE                             FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
 [17,]      FALSE FALSE                             FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
 [18,]      FALSE FALSE                             FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
 [19,]      FALSE FALSE                             FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
 [20,]      FALSE FALSE                             FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
 [21,]      FALSE FALSE                             FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
 [22,]      FALSE FALSE                             FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
 [23,]      FALSE FALSE                             FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
 [24,]      FALSE FALSE                             FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
 [25,]      FALSE FALSE                             FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
 [26,]      FALSE FALSE                             FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
 [27,]      FALSE FALSE                             FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
 [28,]      FALSE FALSE                             FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
 [29,]      FALSE FALSE                             FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
 [30,]      FALSE FALSE                             FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
 [31,]      FALSE FALSE                             FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
         CR2   CR3   CR4  CLV1  CLV2  CLV3  CLV4   AT1   AT2   AT3   AT4   AIP    CE    CR   CLV    AT
  [1,] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
  [2,] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
  [3,] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
  [4,] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
  [5,] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
  [6,] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
  [7,] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
  [8,] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
  [9,] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
 [10,] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
 [11,] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
 [12,] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
 [13,] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
 [14,] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
 [15,] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
 [16,] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
 [17,] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
 [18,] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
 [19,] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
 [20,] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
 [21,] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
 [22,] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
 [23,] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
 [24,] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
 [25,] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
 [26,] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
 [27,] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
 [28,] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
 [29,] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
 [30,] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
 [31,] FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
 [ reached 'max' / getOption("max.print") -- omitted 193 rows ]
> #Total missing values
> sum(is.na(data))
[1] 77
> #Missing values column-wise
> colSums(is.na(data))
                           S1. Have you interacted with AI-driven product recommendations on e-commerce platforms in the last 3 months? 
                                                                                                                                      0 
S2. Do you have a general interest in, or a positive attitude towards, utilising AI features to assist your online shopping experience? 
                                                                                                                                     77 
                                                                                                                             D1. Gender 
                                                                                                                                      0 
                                                                                                                                    Age 
                                                                                                                                      0 
                                                                                                      D3. Frequency of Online Purchases 
                                                                                                                                      0 
                                                                                                                                   AIP1 
                                                                                                                                      0 
                                                                                                                                   AIP2 
                                                                                                                                      0 
                                                                                                                                   AIP3 
                                                                                                                                      0 
                                                                                                                                   AIP4 
                                                                                                                                      0 
                                                                                                                                    CE1 
                                                                                                                                      0 
                                                                                                                                    CE2 
                                                                                                                                      0 
                                                                                                                                    CE3 
                                                                                                                                      0 
                                                                                                                                    CE4 
                                                                                                                                      0 
                                                                                                                                    CE5 
                                                                                                                                      0 
                                                                                                                                    CE6 
                                                                                                                                      0 
                                                                                                                                    CR1 
                                                                                                                                      0 
                                                                                                                                    CR2 
                                                                                                                                      0 
                                                                                                                                    CR3 
                                                                                                                                      0 
                                                                                                                                    CR4 
                                                                                                                                      0 
                                                                                                                                   CLV1 
                                                                                                                                      0 
                                                                                                                                   CLV2 
                                                                                                                                      0 
                                                                                                                                   CLV3 
                                                                                                                                      0 
                                                                                                                                   CLV4 
                                                                                                                                      0 
                                                                                                                                    AT1 
                                                                                                                                      0 
                                                                                                                                    AT2 
                                                                                                                                      0 
                                                                                                                                    AT3 
                                                                                                                                      0 
                                                                                                                                    AT4 
                                                                                                                                      0 
                                                                                                                                    AIP 
                                                                                                                                      0 
                                                                                                                                     CE 
                                                                                                                                      0 
                                                                                                                                     CR 
                                                                                                                                      0 
                                                                                                                                    CLV 
                                                                                                                                      0 
                                                                                                                                     AT 
                                                                                                                                      0 
> # Remove duplicates
> data <- data[!duplicated(data), ]
> #Descriptive statistics
> mean(data$AIP1, na.rm = TRUE)
[1] 3.848214
> mean(data$AIP2, na.rm = TRUE)
[1] 4.013393
> mean(data$AIP3, na.rm = TRUE)
[1] 3.857143
> mean(data$AIP4, na.rm = TRUE)
[1] 4
> mean(data$CE1, na.rm = TRUE)
[1] 3.629464
> mean(data$CE2, na.rm = TRUE)
[1] 3.794643
> mean(data$CE3, na.rm = TRUE)
[1] 3.830357
> mean(data$CE4, na.rm = TRUE)
[1] 3.924107
> mean(data$CE5, na.rm = TRUE)
[1] 3.879464
> mean(data$CE6, na.rm = TRUE)
[1] 3.857143
> # Gender frequency
> table(data[[3]])

           Female              Male Prefer not to say 
               77               145                 2 
> # Gender percentage
> prop.table(table(data[[3]])) * 100

           Female              Male Prefer not to say 
       34.3750000        64.7321429         0.8928571 
> # Age frequency
> table(data[[4]])

18â€“24 25â€“34 35â€“44 45â€“54 
    208       8       7       1 
> # Age percentage
> prop.table(table(data[[4]])) * 100

   18â€“24    25â€“34    35â€“44    45â€“54 
92.8571429  3.5714286  3.1250000  0.4464286 
> # Purchase frequency
> table(data[[5]])

   2â€“3 times a month Less than once a month  Multiple times a week           Once a month            Once a week 
                    77                     45                     41                     44                     17 
> # Purchase percentage
> prop.table(table(data[[5]])) * 100

   2â€“3 times a month Less than once a month  Multiple times a week           Once a month            Once a week 
             34.375000              20.089286              18.303571              19.642857               7.589286 
> 
> library(readxl)
> library(dplyr)

Attaching package: ‘dplyr’

The following objects are masked from ‘package:stats’:

    filter, lag

The following objects are masked from ‘package:base’:

    intersect, setdiff, setequal, union
> library(psych)
> library(car)
Loading required package: carData

Attaching package: ‘car’

The following object is masked from ‘package:psych’:

    logit

The following object is masked from ‘package:dplyr’:

    recode
> library(corrplot)
corrplot 0.95 loaded
> library(GPArotation)

Attaching package: ‘GPArotation’

The following objects are masked from ‘package:psych’:

    equamax, varimin
> library(writexl)
> # AI personalization (Reliability Analysis)
> alpha(data[, c(
+   "AIP1", "AIP2", "AIP3", "AIP4"
+ )])

Reliability analysis   
Call: alpha(x = data[, c("AIP1", "AIP2", "AIP3", "AIP4")])

  raw_alpha std.alpha G6(smc) average_r S/N    ase mean  sd median_r
      0.93      0.93    0.92      0.77  13 0.0076  3.9 1.7     0.78

    95% confidence boundaries 
         lower alpha upper
Feldt     0.91  0.93  0.94
Duhachek  0.92  0.93  0.95

 Reliability if an item is dropped:
     raw_alpha std.alpha G6(smc) average_r  S/N alpha se   var.r med.r
AIP1      0.92      0.92    0.88      0.79 11.2   0.0095 0.00013  0.79
AIP2      0.89      0.89    0.85      0.74  8.5   0.0124 0.00180  0.72
AIP3      0.91      0.91    0.88      0.77 10.3   0.0102 0.00366  0.78
AIP4      0.92      0.92    0.89      0.78 10.8   0.0100 0.00365  0.80

 Item statistics 
       n raw.r std.r r.cor r.drop mean  sd
AIP1 224  0.90  0.90  0.85   0.81  3.8 1.9
AIP2 224  0.94  0.94  0.92   0.89  4.0 1.9
AIP3 224  0.91  0.91  0.87   0.83  3.9 1.9
AIP4 224  0.90  0.90  0.85   0.82  4.0 1.7

Non missing response frequency for each item
        1    2    3    4    5    6    7 miss
AIP1 0.12 0.18 0.12 0.21 0.13 0.13 0.10    0
AIP2 0.09 0.19 0.12 0.17 0.16 0.15 0.12    0
AIP3 0.16 0.14 0.14 0.17 0.12 0.17 0.09    0
AIP4 0.08 0.17 0.12 0.25 0.17 0.12 0.09    0
> # Customer Engagement
> alpha(data[, c(
+   "CE1", "CE2", "CE3", "CE4", "CE5", "CE6"
+ )])

Reliability analysis   
Call: alpha(x = data[, c("CE1", "CE2", "CE3", "CE4", "CE5", "CE6")])

  raw_alpha std.alpha G6(smc) average_r S/N    ase mean  sd median_r
      0.94      0.94    0.93      0.72  15 0.0065  3.8 1.6     0.72

    95% confidence boundaries 
         lower alpha upper
Feldt     0.92  0.94  0.95
Duhachek  0.92  0.94  0.95

 Reliability if an item is dropped:
    raw_alpha std.alpha G6(smc) average_r S/N alpha se  var.r med.r
CE1      0.93      0.93    0.92      0.74  14   0.0072 0.0019  0.73
CE2      0.92      0.92    0.91      0.71  12   0.0081 0.0033  0.71
CE3      0.92      0.92    0.92      0.71  12   0.0082 0.0033  0.70
CE4      0.92      0.92    0.92      0.71  12   0.0082 0.0026  0.69
CE5      0.93      0.93    0.92      0.72  13   0.0079 0.0036  0.73
CE6      0.93      0.93    0.92      0.72  13   0.0078 0.0021  0.71

 Item statistics 
      n raw.r std.r r.cor r.drop mean  sd
CE1 224  0.84  0.84  0.79   0.76  3.6 1.9
CE2 224  0.88  0.88  0.86   0.83  3.8 1.8
CE3 224  0.89  0.89  0.86   0.84  3.8 1.8
CE4 224  0.89  0.89  0.87   0.84  3.9 1.8
CE5 224  0.87  0.87  0.84   0.81  3.9 1.8
CE6 224  0.87  0.87  0.85   0.81  3.9 1.9

Non missing response frequency for each item
       1    2    3    4    5    6    7 miss
CE1 0.15 0.18 0.18 0.17 0.11 0.08 0.12    0
CE2 0.08 0.22 0.17 0.19 0.13 0.14 0.08    0
CE3 0.13 0.13 0.17 0.23 0.09 0.16 0.08    0
CE4 0.11 0.15 0.16 0.22 0.14 0.14 0.09    0
CE5 0.11 0.17 0.18 0.18 0.13 0.14 0.10    0
CE6 0.11 0.19 0.15 0.19 0.14 0.11 0.12    0
> 
> # Customer Retention
> alpha(data[, c(
+   "CR1", "CR2", "CR3", "CR4"
+ )])

Reliability analysis   
Call: alpha(x = data[, c("CR1", "CR2", "CR3", "CR4")])

  raw_alpha std.alpha G6(smc) average_r S/N   ase mean  sd median_r
       0.9       0.9    0.88       0.7 9.4 0.011  3.8 1.6     0.71

    95% confidence boundaries 
         lower alpha upper
Feldt     0.88   0.9  0.92
Duhachek  0.88   0.9  0.92

 Reliability if an item is dropped:
    raw_alpha std.alpha G6(smc) average_r S/N alpha se   var.r med.r
CR1      0.87      0.87    0.82      0.69 6.6    0.015 0.00409  0.68
CR2      0.89      0.89    0.84      0.73 8.1    0.013 0.00047  0.72
CR3      0.87      0.87    0.82      0.68 6.5    0.015 0.00243  0.71
CR4      0.88      0.88    0.83      0.70 7.2    0.014 0.00043  0.71

 Item statistics 
      n raw.r std.r r.cor r.drop mean  sd
CR1 224  0.90  0.89  0.84   0.80  3.7 1.9
CR2 224  0.85  0.86  0.78   0.74  3.8 1.7
CR3 224  0.89  0.90  0.85   0.81  3.8 1.7
CR4 224  0.88  0.88  0.82   0.78  4.0 1.8

Non missing response frequency for each item
       1    2    3    4    5    6    7 miss
CR1 0.17 0.16 0.16 0.18 0.11 0.13 0.09    0
CR2 0.07 0.19 0.22 0.23 0.10 0.12 0.08    0
CR3 0.09 0.15 0.18 0.25 0.12 0.12 0.08    0
CR4 0.09 0.13 0.18 0.22 0.12 0.13 0.11    0
> 
> # Customer Lifetime Value
> alpha(data[, c(
+   "CLV1", "CLV2", "CLV3", "CLV4"
+ )])

Reliability analysis   
Call: alpha(x = data[, c("CLV1", "CLV2", "CLV3", "CLV4")])

  raw_alpha std.alpha G6(smc) average_r S/N   ase mean  sd median_r
       0.9       0.9    0.88       0.7 9.5 0.011  3.8 1.6     0.69

    95% confidence boundaries 
         lower alpha upper
Feldt     0.88   0.9  0.92
Duhachek  0.88   0.9  0.93

 Reliability if an item is dropped:
     raw_alpha std.alpha G6(smc) average_r S/N alpha se   var.r med.r
CLV1      0.88      0.88    0.83      0.71 7.3    0.014 0.00076  0.70
CLV2      0.86      0.86    0.80      0.67 6.1    0.016 0.00097  0.67
CLV3      0.88      0.88    0.84      0.70 7.2    0.014 0.00625  0.69
CLV4      0.89      0.89    0.85      0.73 8.3    0.013 0.00370  0.74

 Item statistics 
       n raw.r std.r r.cor r.drop mean  sd
CLV1 224  0.88  0.88  0.83   0.78  3.5 1.9
CLV2 224  0.91  0.91  0.88   0.84  3.8 1.8
CLV3 224  0.88  0.88  0.82   0.78  3.8 1.8
CLV4 224  0.86  0.86  0.78   0.74  4.0 1.8

Non missing response frequency for each item
        1    2    3    4    5    6    7 miss
CLV1 0.17 0.18 0.16 0.21 0.10 0.09 0.09    0
CLV2 0.09 0.19 0.17 0.23 0.11 0.11 0.10    0
CLV3 0.11 0.16 0.16 0.23 0.15 0.12 0.08    0
CLV4 0.09 0.15 0.17 0.21 0.14 0.12 0.12    0
> 
> # Algorithmic Transparency
> alpha(data[, c(
+   "AT1", "AT2", "AT3", "AT4"
+ )])

Reliability analysis   
Call: alpha(x = data[, c("AT1", "AT2", "AT3", "AT4")])

  raw_alpha std.alpha G6(smc) average_r S/N  ase mean  sd median_r
      0.91      0.91    0.89      0.71 9.6 0.01  3.8 1.6     0.68

    95% confidence boundaries 
         lower alpha upper
Feldt     0.88  0.91  0.92
Duhachek  0.88  0.91  0.93

 Reliability if an item is dropped:
    raw_alpha std.alpha G6(smc) average_r S/N alpha se  var.r med.r
AT1      0.88      0.88    0.84      0.71 7.2    0.014 0.0053  0.68
AT2      0.88      0.88    0.84      0.71 7.4    0.014 0.0044  0.68
AT3      0.87      0.87    0.83      0.69 6.8    0.015 0.0046  0.67
AT4      0.88      0.88    0.84      0.71 7.4    0.014 0.0027  0.68

 Item statistics 
      n raw.r std.r r.cor r.drop mean  sd
AT1 224  0.89  0.88  0.83   0.79  3.7 1.9
AT2 224  0.88  0.88  0.82   0.78  3.9 1.8
AT3 224  0.89  0.89  0.85   0.80  3.8 1.9
AT4 224  0.88  0.88  0.83   0.78  3.9 1.8

Non missing response frequency for each item
       1    2    3    4    5    6    7 miss
AT1 0.17 0.16 0.12 0.19 0.14 0.12 0.10    0
AT2 0.09 0.18 0.17 0.16 0.17 0.12 0.11    0
AT3 0.13 0.16 0.15 0.20 0.12 0.14 0.09    0
AT4 0.11 0.16 0.16 0.21 0.15 0.10 0.11    0
> 
> 
> # AI Personalisation(CONSTRUCT SCORES)
> data$AIP <- rowMeans(
+   data[, c("AIP1", "AIP2", "AIP3", "AIP4")],
+   na.rm = TRUE
+ )
> 
> # Customer Engagement
> data$CE <- rowMeans(
+   data[, c("CE1", "CE2", "CE3", "CE4", "CE5", "CE6")],
+   na.rm = TRUE
+ )
> 
> # Customer Retention
> data$CR <- rowMeans(
+   data[, c("CR1", "CR2", "CR3", "CR4")],
+   na.rm = TRUE
+ )
> 
> # Customer Lifetime Value
> data$CLV <- rowMeans(
+   data[, c("CLV1", "CLV2", "CLV3", "CLV4")],
+   na.rm = TRUE
+ )
> 
> # Algorithmic Transparency
> data$AT <- rowMeans(
+   data[, c("AT1", "AT2", "AT3", "AT4")],
+   na.rm = TRUE
+ )
> 
> #check construct scores
> head(data[, c("AIP", "CE", "CR", "CLV", "AT")])
# A tibble: 6 × 5
    AIP    CE    CR   CLV    AT
  <dbl> <dbl> <dbl> <dbl> <dbl>
1     5  4.67  5.75  6      6  
2     7  6.67  7     7      7  
3     6  6     3.5   6.5    6  
4     6  5.83  6.5   6.25   6.5
5     2  2     2     2      2.5
6     6  6     5     6      5  
> 
> #Correlation
> cor(
+   data[, c("AIP", "CE", "CR", "CLV", "AT")],
+   use = "complete.obs"
+ )
          AIP        CE        CR       CLV        AT
AIP 1.0000000 0.7918455 0.6942342 0.6552251 0.6384699
CE  0.7918455 1.0000000 0.6549805 0.6589310 0.6584054
CR  0.6942342 0.6549805 1.0000000 0.7674103 0.6503197
CLV 0.6552251 0.6589310 0.7674103 1.0000000 0.6873669
AT  0.6384699 0.6584054 0.6503197 0.6873669 1.0000000
> # Individual relationship
> cor.test(data$AIP, data$CE)

	Pearson's product-moment correlation

data:  data$AIP and data$CE
t = 19.319, df = 222, p-value < 2.2e-16
alternative hypothesis: true correlation is not equal to 0
95 percent confidence interval:
 0.7372916 0.8361393
sample estimates:
      cor 
0.7918455 

> 
> #ANOVA
> names(data)[4] <- "Age"
> #AI personalization
> anova_AIP <- aov(
+   AIP ~ Age,
+   data = data
+ )
> 
> summary(anova_AIP)
             Df Sum Sq Mean Sq F value Pr(>F)  
Age           3   25.5   8.485   3.059 0.0291 *
Residuals   220  610.3   2.774                 
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1
> 
> #Customer Engagement
> anova_CE <- aov(
+   CE ~ Age,
+   data = data
+ )
> 
> summary(anova_CE)
             Df Sum Sq Mean Sq F value Pr(>F)
Age           3   15.4   5.124   2.014  0.113
Residuals   220  559.6   2.544               
> 
> #Customer Retention
> anova_CR <- aov(
+   CR ~ Age,
+   data = data
+ )
> 
> summary(anova_CR)
             Df Sum Sq Mean Sq F value Pr(>F)
Age           3     15   5.006   2.082  0.103
Residuals   220    529   2.404               
> 
> #Customer Lifetime Value
> anova_CLV <- aov(
+   CLV ~ Age,
+   data = data
+ )
> 
> summary(anova_CLV)
             Df Sum Sq Mean Sq F value Pr(>F)  
Age           3   21.6   7.183   2.887 0.0365 *
Residuals   220  547.3   2.488                 
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1
> 
> #Algorithmic Transparency
> anova_AT <- aov(
+   AT ~ Age,
+   data = data
+ )
> 
> summary(anova_AT)
             Df Sum Sq Mean Sq F value Pr(>F)
Age           3   12.0   3.999    1.48  0.221
Residuals   220  594.5   2.702               
> 
> #T-test (Gender categories)
> table(data[[3]])

           Female              Male Prefer not to say 
               77               145                 2 
> 
> # Gender comparison
> data_gender <- subset(data, Gender %in% c("Male", "Female"))
