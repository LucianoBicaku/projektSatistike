library(Rcmdr)
dataset <- readXL("C:/Users/use/Desktop/projekt sattistike/satistike.xlsx",
    rownames = FALSE, header = TRUE, na = "", sheet = "Form Responses 1",
    stringsAsFactors = TRUE
)
png(file = "Burimi te ardhurave.png")
color <- c(
    "#f17bc7", "#3717eb", "#d8218f",
    "#796bb6", "#7d6e8d", "#6c5a9b"
)
library(colorspace, pos = 16)
with(dataset, pie(table(Punesimi),
    labels = levels(Punesimi), xlab = "",
    ylab = "", main = "Burimi I te ardhurave", col = color, border = "white"
))

dev.off()