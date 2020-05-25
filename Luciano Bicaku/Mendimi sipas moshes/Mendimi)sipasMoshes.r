png(file = "Ndikimi ne ekonomi sipas moshes.png")
color <- c(
    "#f17bc7", "#3717eb", "#d8218f",
    "#796bb6", "#7d6e8d", "#6c5a9b"
)
with(dataset, Barplot(mendimi,
    by = Mosha, style = "divided",
    legend.pos = "above", xlab = "", ylab = "Nr i personve", main = "",
    border = "white", col = color
))
dev.off()