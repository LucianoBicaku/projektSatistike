png(file = "LidhjaMosheVeshtiresiPune.png")
color <- c(
    "#f17bc7",
    "#6d194b",
    "#796bb6",
    "#7d6e8d",
    "#6c5a9b",
    "#d7c7d8",
    "#8f8f8f"
)
with(dataset, Barplot(Punimi.gjate.karantines,
    by = Mosha, style = "divided",
    legend.pos = "above", xlab = "", ylab = "Nr i personve", main = "",
    col = color, border = "white"
))
dev.off()