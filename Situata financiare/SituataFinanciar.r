library(Rcmdr)
dataset <- readXL("C:/Users/use/Desktop/projekt sattistike/satistike.xlsx",
    rownames = FALSE, header = TRUE, na = "", sheet = "Form Responses 1",
    stringsAsFactors = TRUE
)
png(file = "Situata Financiare.png")
color <- c(
    "#f17bc7", "#3717eb", "#d8218f"
)
with(dataset, pie(table(Situata.financiare),
    labels = levels(Situata.financiare), xlab = "", ylab = "",
    main = "Situat financiare", col = color,
    border = "white"
))
dev.off()