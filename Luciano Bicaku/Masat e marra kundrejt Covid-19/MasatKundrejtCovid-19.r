library(Rcmdr)
dataset <- readXL("C:/Users/use/Desktop/projekt sattistike/satistike.xlsx",
    rownames = FALSE, header = TRUE, na = "", sheet = "Form Responses 1",
    stringsAsFactors = TRUE
)
png(file = "Masat kundrejt Covid-19.png")
color <- c(
    "#f17bc7", "#3717eb", "#d8218f",
    "#796bb6", "#7d6e8d", "#6c5a9b"
)
with(dataset, pie(table(Masat.Parandaluese),
    labels = levels(Masat.Parandaluese), xlab = "", ylab = "",
    main = "Masat e marra Kundrejt Covid-19", col = color,
    border = "white"
))
dev.off()