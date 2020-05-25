library(Rcmdr)
dataset <- readXL("C:/Users/use/Desktop/projekt sattistike/satistike.xlsx",
    rownames = FALSE, header = TRUE, na = "", sheet = "Form Responses 1",
    stringsAsFactors = TRUE
)
png(file = "Nr i antarve per familje.png")
with(dataset, Hist(Nr.I.personave.ne.familje,
    scale = "frequency",
    breaks = "Sturges", col = "#f17bc7",
    ylab = "Persona",
    xlab = "Numri i antarve per secilen familje",
    main = "Numri i personave per secilen familje"
))

dev.off()