library(Rcmdr)
tabel <- readXL("C:/Users/use/Desktop/projekt sattistike/satistike.xlsx",
    rownames = FALSE, header = TRUE, na = "", sheet = "Form Responses 1",
    stringsAsFactors = TRUE
)
color <- c(
    "#f17bc7", "#8f8f8f", "#6d194b",
    "#796bb6", "#7d6e8d", "#6c5a9b", "#d7c7d8"
)

library(colorspace, pos = 16)
with(tabel, pie(table(Mosha),
    labels = levels(Mosha), xlab = "", ylab = "",
    main = "Mosha", col = color, border = "white"
))
dev.off()