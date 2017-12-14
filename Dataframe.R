# primo esempio di dataframe

mio.dataframe <- data.frame(age=c(25,27,35,34), sex=c("M","F","F","M"))
                                                       
mio.dataframe

vettore1 <- 20:30
vettore2 <- 30:40
vettore3 <- 40:50
dataframe1 <- data.frame(vettore1, vettore2, vettore3)

dataframe1

mio.dataframe$married <- c(T,F,F,T)

# in questo caso abbiamo aggiunto un operatore logico: T sta per TRUE, e F per FALSE

# stampiamo il dataframe e verifichiamo che la variabile sia stata aggiunta correttamente

mio.dataframe

mio.dataframe$age

mio.dataframe$sex =="M"

mio.dataframe

mio.dataframe[4,1]

t(mio.dataframe)
