dataset <- readXL("C:/Users/use/Desktop/projekt sattistike/satistike.xlsx",
    rownames = FALSE, header = TRUE, na = "", sheet = "Form Responses 1",
    stringsAsFactors = TRUE
)
png(file = "LidhjaMoshePunesim.png")
color <- c(
    "#f17bc7",
    "#6d194b",
    "#796bb6",
    "#7d6e8d",
    "#6c5a9b",
    "#d7c7d8",
    "#8f8f8f"
)
with(dataset, Barplot(Mosha,
    by = Punesimi, style = "divided",
    legend.pos = "above", xlab = "Mosha",
    border = "white", col = color,
    ylab = "Nr i personve"
))
dev.off()