library(Rcmdr)
dataset <- readXL("C:/Users/use/Desktop/projekt sattistike/satistike.xlsx",
    rownames = FALSE, header = TRUE, na = "", sheet = "Form Responses 1",
    stringsAsFactors = TRUE
)
png(file = "banimi.png")
library(colorspace, pos = 16)
with(Dataset, pie(table(Zona.Banimit),
    labels = levels(Zona.Banimit), xlab = "",
    ylab = "", main = "Zona.Banimit", col = c("#f17bc7", "#3717eb")
))
dev.off()