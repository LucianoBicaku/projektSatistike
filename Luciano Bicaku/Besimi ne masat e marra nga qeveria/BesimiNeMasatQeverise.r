library(Rcmdr)
dataset <- readXL("C:/Users/use/Desktop/projekt sattistike/satistike.xlsx",
    rownames = FALSE, header = TRUE, na = "", sheet = "Form Responses 1",
    stringsAsFactors = TRUE
)
png(file = "BesimiNeMasatEQeverise.png")
color <- c(
    "#f17bc7", "#3717eb", "#d8218f",
    "#796bb6"
)
with(
    dataset,
    pie(table(Besimi.Ne.masat.e.marre.nga.qeveria),
        labels = levels(Besimi.Ne.masat.e.marre.nga.qeveria),
        xlab = "", ylab = "",
        main = "Burimet me e besueshme te informacionit
        sipas personave qe kan eplotesuar pyetesorin",
        col = color,
        border = "white"
    )
)
dev.off()