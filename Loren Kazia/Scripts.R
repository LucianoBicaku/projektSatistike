#Importimi i dokumentit nga nje file Excel-i
library(readxl)
Responses <- read_excel("~/Downloads/Untitled form (Responses) 1.xlsx",
col_types = c("text", "skip", "skip",
"text", "numeric", "numeric", "text",
"text", "text", "text", "text", "text",
"text"), na = "-")
View(Responses)
#Krijimi i nje vektori me ngjyra sipas nje palete te zgjedhur
color <- c(
"#f17bc7", "#3717eb", "#d8218f",
"#796bb6", "#7d6e8d", "#6c5a9b"
)
#Krijimi i tabelave te kontigjences per secilen kategori ne lidhje me gjinene e personave te anketuar
xgraf1 <- xtabs(~Responses$`Cilës gjini i përkisni?` + Responses$`Jeni:`)
xgraf2 <- xtabs(~Responses$`Cilës gjini i përkisni?` + Responses$`Cilat janë disa masa parandaluese që ju keni marrë për t'u mbrojtur nga Covid-19?`)
xgraf3 <- xtabs(~Responses$`Cilës gjini i përkisni?` + Responses$`Situata juaj financiare gjatë kësaj kohe:')
xgraf4 <- xtabs(~Responses$`Cilës gjini i përkisni?` + Responses$`Sa e lehtë apo e vështirë është që të punosh në mënyrë efiçente gjatë kësaj periudhe?`)
xgraf5 <- xtabs(~Responses$`Cilës gjini i përkisni?` + Responses$`Cili ka qenë impakti i COVID-19 në biznesin tuaj apo në vendin ku ju punoni?`)
xgraf6 <- xtabs(~Responses$`Cilës gjini i përkisni?` + Responses$`Mendoni se gjendja aktuale do të sjellë ndryshime të mëtejshme në ekonominë Shqiptare?`)
xgraf7 <- xtabs(~Responses$`Cilës gjini i përkisni?` + Responses$`Cili mjet informimi mendoni se është më i besueshëm për dhënien e informacionit mbi COVID-19?`)
xgraf8 <- xtabs(~Responses$`Cilës gjini i përkisni?` + Responses$`Sa besim keni në masat e marra nga qeveria për të parandaluar përhapjen e këtij virusi?`)
#Ndertimi i grafikeve barplot sipas tabelave te kontigjences se krijuara me siper, gjithmone ne raport me gjinine e te anketuarve
barplot(prop.table(xgraf1, 2), col = color, border = "white", main = "Statusi i punesimit ne lidhje me gjinine", legend.text = rownames(xgraf1), bty="L")
barplot(prop.table(xgraf2, 2), col = color, border = "white", main = "Masat parandaluese te marra sipas gjinise", legend.text = rownames(xgraf2), bty="L")
barplot(prop.table(xgraf3, 2), col = color, border = "white", main = "Situata financiare sipas gjinise", legend.text = rownames(xgraf3), bty="L")
barplot(prop.table(xgraf4, 2), col = color, border = "white", main = "Veshtiresia e te punuarit nga shtepia sipas gjinise", legend.text = rownames(xgraf4), bty="L")
barplot(prop.table(xgraf5, 2), col = color, border = "white", main = "Impakti ne biznesin apo vendin e punes sipas gjinise", legend.text = rownames(xgraf5), bty="L")
barplot(prop.table(xgraf6, 2), col = color, border = "white", main = "Opinioni ne ndryshimin e panorames ekonomike ne Shqiperi sipas gjinise", legend.text = rownames(xgraf6), bty="L")
barplot(prop.table(xgraf6, 1), col = color, border = "white", main = "Opinioni ne ndryshimin e panorames ekonomike ne Shqiperi sipas gjinise", legend.text = rownames(xgraf6), bty="L")
barplot(prop.table(xgraf6, 2), col = color, border = "white", main = "Opinioni ne ndryshimin e panorames ekonomike ne Shqiperi sipas gjinise", legend.text = rownames(xgraf6), bty="L")
barplot(prop.table(xgraf7, 2), col = color, border = "white", main = "Mjetet me te perdorura te informimit sipas gjinise", legend.text = rownames(xgraf7), bty="L")
barplot(prop.table(xgraf7, 2), col = color, border = "white", main = "Mjetet me te perdorura te informimit sipas gjinise", legend.text = rownames(xgraf7), bty="L")
barplot(prop.table(xgraf8, 2), col = color, border = "white", main = "Besimi per masat e marra nga Qeveria sipas gjinise", legend.text = rownames(xgraf8), bty="L")