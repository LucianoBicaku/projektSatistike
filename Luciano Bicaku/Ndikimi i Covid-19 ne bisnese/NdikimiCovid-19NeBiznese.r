library(Rcmdr)
dataset <- readXL("C:/Users/use/Desktop/projekt sattistike/satistike.xlsx",
    rownames = FALSE, header = TRUE, na = "", sheet = "Form Responses 1",
    stringsAsFactors = TRUE
)
png(file = "NdikimNeBiznese.png")
color <- c(
    "#f17bc7", "#3717eb", "#d8218f",
    "#796bb6", "#7d6e8d", "#6c5a9b"
)
with(dataset, pie(table(Impakti.I.Covid.19.ne.biznes),
    labels = levels(Impakti.I.Covid.19.ne.biznes), xlab = "", ylab = "",
    main = "Ndikimi i Covid-19 ne biznese", col = color
))
dev.off()