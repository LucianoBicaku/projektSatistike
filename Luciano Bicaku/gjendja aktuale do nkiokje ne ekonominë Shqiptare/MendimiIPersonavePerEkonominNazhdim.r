library(Rcmdr)
dataset <- readXL("C:/Users/use/Desktop/projekt sattistike/satistike.xlsx",
    rownames = FALSE, header = TRUE, na = "", sheet = "Form Responses 1",
    stringsAsFactors = TRUE
)
png(file = "Mendimi per ekonomin ne vashdim.png")
with(
    dataset,
    pie(table(mendimi),
        labels = levels(mendimi),
        xlab = "", ylab = "",
        main = "Gjendja aktuale do të sjellë ndryshime në ekonominë Shqiptare",
        col = c("#3717eb", "#d8218f"),
        border = "white"
    )
)
dev.off()