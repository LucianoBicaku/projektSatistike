png(file = "Lidhja Midis Moshes me burimet e Informacionit.png")
color <- c(
    "#f17bc7", "#3717eb", "#d8218f",
    "#796bb6", "#7d6e8d", "#6c5a9b"
)
with(dataset, Barplot(Mosha,
    by = Burimet.e.Informacionit, style = "divided",
    legend.pos = "right", xlab = "", ylab = "Nr i personve", main = "",
    col = color, border = "white"
))
dev.off()