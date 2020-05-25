library(colorspace, pos = 16)
color <- c(
    "#f17bc7", "#3717eb"
)
png(file = "Gjinia.png")
with(dataset, pie(table(Gjinia),
    labels = levels(Gjinia), xlab = "", ylab = "",
    main = "", col = color,
    border = "white"
))
dev.off()