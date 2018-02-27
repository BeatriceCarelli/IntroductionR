stud <- read.csv("students2.csv", sep = ",")

# modifichiamo gli errori nella variabile gender
stud$gender <- gsub("(?=\\b[\\m*#])\\w+", "M", stud$gender, perl=T)

stud$gender <- gsub("(?=\\b[\\F|f*#])\\w+", "F", stud$gender, perl = T)

# modifichiamo gli errori nelle variabili mark1 e mark2
stud$mark1[stud$mark1 == 224] <- 24

stud$mark2[stud$mark2 == 330] <- 30

# per trattare la variabile fres
# eliminiamo prima gli spazi vuoti
library(stringr)
stud$fres <- str_trim(stud$fres)


# possiamo ricodificare la variabile fres in questo modo
library(plyr)
stud$fres <- revalue(stud$fres, c("0" = "neg", "1" = "pos", "negative" = "neg", "positive" = "pos"))


# oppure anche in questo modo
stud$fres[stud$fres == 0] <- "neg"
stud$fres[stud$fres == "negative"] <- "neg"
stud$fres[stud$fres == "positive"] <- "pos"
stud$fres[stud$fres == 1] <- "pos"

# salviamo il dataset corretto con altro nome sulla nostra working directory
write.csv(stud, "students.corretto1.csv")


# ripartiamo dal dataset originale, quello con gli errori
# in questo caso ci interessano in particolare le variabili mark1 e mark1
library(outliers)

stud <- read.csv("students2.csv", sep = ",")
chisq.out.test(stud$mark1)
chisq.out.test(stud$mark2)

# possiamo identificare gli outlier di una variabile anche tramite la funzione outlier
outlier(stud$mark2, opposite = FALSE, logical = FALSE)


# impostando l’argomento logical come TRUE otteniamo un output di questo tipo
outlier(stud$mark2, opposite = FALSE, logical = TRUE)

# possiamo usare la funzione sapply() per applicare la funzione a più variabili del dataset
sapply(stud[, 4:6], outlier)


# in questo modo, impostando fill come TRUE e median come FALSE, impostiamo la media al posto dell'outlier
rm.outlier(stud$mark1, fill = TRUE, median = FALSE, opposite = FALSE)


# in questo modo, impostando fill come TRUE e median come TRUE, impostiamo la mediana al posto dell'outlier
rm.outlier(stud$mark1, fill = TRUE, median = FALSE, opposite = FALSE)


# editrules
library(editrules)

# carichiamo ancora una volta il dataset da correggere
stud <- read.csv("students2.csv", sep = ",")

# impostiamo delle regole, ad esempio la variabile mark1 dev'essere compresa tra i numeri 10 e 30
ES <- editset(c("mark1 > 10", "mark1 <= 30", "mark2 > 10", "mark2 <= 30"))

# visualizziamo i casi che violano le regole
violatedEdits(ES, stud)

# possiamo anche elencare le nostra regole in un file txt, e poi importarlo tramite la funzione editfile() 
rules <- editfile("/Users/valentinaporcu/Desktop/rules.txt")

violatedEdits(rules, stud)

# salviamo le regole violate in un oggetto
vr <- violatedEdits(rules, stud)

# possiamo visualizzare un riassunto dei risultati con la funzione summary
summary(vr)

# o rappresentarli graficamente con la funzione plot()
plot(vr)
