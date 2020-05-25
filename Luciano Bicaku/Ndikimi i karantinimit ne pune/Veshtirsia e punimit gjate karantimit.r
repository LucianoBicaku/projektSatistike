library(Rcmdr)
dataset <- readXL("C:/Users/use/Desktop/projekt sattistike/satistike.xlsx",
    rownames = FALSE, header = TRUE, na = "", sheet = "Form Responses 1",
    stringsAsFactors = TRUE
)
png(file = "Veshtirsia e punes gjate karantimit.png")
color <- c(
    "#f17bc7", "#3717eb", "#d8218f",
    "#796bb6", "#6c5a9b"
)
with(dataset, pie(table(Punimi.gjate.karantines),
    labels = levels(Punimi.gjate.karantines), xlab = "", ylab = "",
    main = "Sa e lehtë apo e vështirë është që të punosh në mënyrë
     efiçente gjatë kësaj periudhe?",
    col = color,
    border = "white"
))
dev.off()