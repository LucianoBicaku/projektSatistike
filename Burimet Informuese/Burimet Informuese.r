library(Rcmdr)
dataset <- readXL("C:/Users/use/Desktop/projekt sattistike/satistike.xlsx",
    rownames = FALSE, header = TRUE, na = "", sheet = "Form Responses 1",
    stringsAsFactors = TRUE
)
png(file = "BurimetMeTeBesueshmeInformative.png")
color <- c(
    "#f17bc7", "#3717eb", "#d8218f",
    "#796bb6", "#7d6e8d", "#6c5a9b",
    "#F6F5AE", "#DD0426", "#0582CA",
    "#FF99C8"
)
with(dataset, pie(table(Burimet.e.Informacionit),
    labels = levels(Burimet.e.Informacionit), xlab = "", ylab = "",
    main = "Burimet me e besueshme te informacionit sipas personave
    qe kan eplotesuar pyetesorin",
    col = color,
    border = "white"
))
dev.off()