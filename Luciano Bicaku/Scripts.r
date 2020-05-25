library(Rcmdr)
dataset <- readXL("C:/Users/use/Desktop/projekt sattistike/satistike.xlsx",
    rownames = FALSE, header = TRUE, na = "", sheet = "Form Responses 1",
    stringsAsFactors = TRUE
)
# besimi ne masat e marra nga qeveria
with(
    dataset,
    pie(table(Besimi.Ne.masat.e.marre.nga.qeveria),
        labels = levels(Besimi.Ne.masat.e.marre.nga.qeveria),
        xlab = "", ylab = "",
        main = "Burimet me e besueshme te informacionit
        sipas personave qe kan eplotesuar pyetesorin",

        border = "white"
    )
)
# Burimet e informacionit sipas moshave
with(dataset, Barplot(Mosha,
    by = Burimet.e.Informacionit, style = "divided",
    legend.pos = "right", xlab = "", ylab = "Nr i personve", main = "",
    border = "white"
))
# Burimet informuese
with(dataset, pie(table(Burimet.e.Informacionit),
    labels = levels(Burimet.e.Informacionit), xlab = "", ylab = "",
    main = "Burimet me e besueshme te informacionit sipas personave
    qe kan eplotesuar pyetesorin",
    border = "white"
))
# Burimet e te ardhurave( punesimi )
with(dataset, pie(table(Punesimi),
    labels = levels(Punesimi), xlab = "",
    ylab = "", main = "Burimi I te ardhurave", border = "white"
))
# Ndikimi i gjendjes aktuale ne ekonimine shqiptare
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
# gjinia
with(dataset, pie(table(Gjinia),
    labels = levels(Gjinia), xlab = "", ylab = "",
    main = "",
    border = "white"
))
# Masat e marra kundrejt covid-19 ne lidhje me moshen
with(dataset, Barplot(Masat.Parandaluese,
    by = Mosha, style = "divided",
    legend.pos = "above", xlab = "",
    ylab = "Nr i personve", main = "", border = "white"
))
# LIdhja midis moshes dhe punesimit
with(dataset, Barplot(Mosha,
    by = Punesimi, style = "divided",
    legend.pos = "above", xlab = "Mosha",
    border = "white",
    ylab = "Nr i personve"
))
# Lidhje midis moshes dhe situates financiare
with(dataset, Barplot(Situata.financiare,
    by = Mosha, style = "divided",
    legend.pos = "above", xlab = "", ylab = "Nr i personve", main = "",
    border = "white"
))
# Lidhja midis moshes dhe pershtatjes se punimit ne karantine
with(dataset, Barplot(Punimi.gjate.karantines,
    by = Mosha, style = "divided",
    legend.pos = "above", xlab = "", ylab = "Nr i personve", main = "",
    border = "white"
))
# Masat e marra per tu mbrojtur ose parandaluar virusin
with(dataset, pie(table(Masat.Parandaluese),
    labels = levels(Masat.Parandaluese), xlab = "", ylab = "",
    main = "Masat e marra Kundrejt Covid-19",
    border = "white"
))
# a do ndikoj covid-19 ne ekonomin shqiptare , sipas moshes
with(dataset, Barplot(mendimi,
    by = Mosha, style = "divided",
    legend.pos = "above", xlab = "", ylab = "Nr i personve", main = "",
    border = "white",
))
# grup moshat
with(tabel, pie(table(Mosha),
    labels = levels(Mosha), xlab = "", ylab = "",
    main = "Mosha", border = "white"
))
# sa te kenaqur jane te intervistuarit duke u grupuar ne baz te moshes
with(dataset, Barplot(Mosha,
    by = Besimi.Ne.masat.e.marre.nga.qeveria, style = "divided",
    legend.pos = "right", xlab = "", ylab = "Nr i personve", main = "",
    border = "white"
))
# ndikimi i covid-19 ne biznese
with(dataset, pie(table(Impakti.I.Covid.19.ne.biznes),
    labels = levels(Impakti.I.Covid.19.ne.biznes), xlab = "", ylab = "",
    main = "Ndikimi i Covid-19 ne biznese",
))
# veshtirsia e punes gjate karantines
with(dataset, Barplot(Mosha,
    by = Besimi.Ne.masat.e.marre.nga.qeveria, style = "divided",
    legend.pos = "right", xlab = "", ylab = "Nr i personve", main = "",
    border = "white"
))
# nr i pjestarve te familjes
with(dataset, Hist(Nr.I.personave.ne.familje,
    scale = "frequency",
    breaks = "Sturges", col = "#f17bc7",
    ylab = "Persona",
    xlab = "Numri i antarve per secilen familje",
    main = "Numri i personave per secilen familje"
))
# nr personash te punesaur per cdo familje
with(dataset, Hist(nr.I.personave.ne.familje.te.punesuar,
    scale = "frequency",
    breaks = "Sturges", col = "#f17bc7", ylab = "Persona",
    main = "Numri i personave te punesuar per secilen familje",
    border = "white"
))
# situata financiare
with(dataset, pie(table(Situata.financiare),
    labels = levels(Situata.financiare), xlab = "", ylab = "",
    main = "Situata financiare",
    border = "white"
))
# Zona e banimit
with(dataset, pie(table(Zona.Banimit),
    labels = levels(Zona.Banimit), xlab = "",
    ylab = "", main = "Zona.Banimit", col = c("#f17bc7", "#3717eb")
))