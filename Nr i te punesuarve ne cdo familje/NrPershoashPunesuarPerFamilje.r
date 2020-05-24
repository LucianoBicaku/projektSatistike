library(Rcmdr)
dataset <- readXL("C:/Users/use/Desktop/projekt sattistike/satistike.xlsx",
    rownames = FALSE, header = TRUE, na = "", sheet = "Form Responses 1",
    stringsAsFactors = TRUE
)
png(file = "Persona Te Punesuar per familje.png")
with(dataset, Hist(nr.I.personave.ne.familje.te.punesuar,
    scale = "frequency",
    breaks = "Sturges", col = "#f17bc7", ylab = "Persona",
    main = "Numri i personave te punesuar per secilen familje",
    border = "white"
))
dev.off()