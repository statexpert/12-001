library("psych")

dt <- read.table("data.csv", sep = ";")

# Описательные статистики
describe(dt, skew=FALSE)

# Альфа кронбаха для шкалы «Рыночная ориентация»
alpha(cdt[,1:which(names(cdt) == "V23")])
cdt <- dt[, c(-17, -23)]
alpha(cdt[,1:which(names(cdt) == "V23")])


fs <- rowMeans(dt[1:18])
fc <- rowMeans(dt[19:24])
cfc <- rowMeans(dt[25:31])
sc <- dt[32]
pq <- dt[33]
mr <- dt[34]
ss <- dt[35]
nf <- dt[36]
nv <- dt[37]