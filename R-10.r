library(MASS)
library(reshape2)
library(reshape)
library(ggplot2)

molten.ships <- melt(ships, id = c("type","year"))
molten.ships
cast(molten.ships, type+year~variable,sum)

#     type year  variable value
# 1      A   60    period    60
# 2      A   60    period    75
# 3      A   65    period    60
# 4      A   65    period    75
# 5      A   70    period    60
# 6      A   70    period    75
# 7      A   75    period    60
# 8      A   75    period    75

# 41     A   60   service   127
# 42     A   60   service    63
# 43     A   65   service  1095
# 44     A   65   service  1095
# 45     A   70   service  1512
# 46     A   70   service  3353
# 47     A   75   service     0
Type  Year  period Ser
A    60      135  190
A    65      135  2190