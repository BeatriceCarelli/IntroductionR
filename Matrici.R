# creiamo una matrice, e la chiamiamo matrice1
matrice1 <- matrix(1:12, nrow=4, ncol=2)

matrice1

matrice2 <- matrix(data=c(10, 15, 27, 43, 54, 12, 25, 34, 47, 56), nrow=2, ncol=5, byrow=TRUE)

matrice2

matrice3 <- matrix(1:8, nrow=2, byrow=TRUE)

matrice3

t(matrice3)

# riprendiamo l’esempio precedente
matrice3 <- matrix(1:8, nrow=2, byrow=TRUE)

matrice3

# selezioniamo ora il terzo elemento della seconda riga
matrice3[2,3]

# selezioniamo la prima e la seconda riga, e la terza e quarta colonna
matrice3[1:2, 3:4]

# in questa maniera, invece, selezioniamo solo i dati della prima colonna
matrice3[,3]


# e invece, in questo modo, i dati solo della seconda riga
matrice3 [2,]

# operazioni sulle matrici

matrice4 <- matrix(1:8, nrow=2, byrow=TRUE)

matrice5 <- matrix(9:16, nrow=2, byrow=TRUE)

matrice4

matrice5

matrice4 * matrice5

matrice4 + matrice5

matrice4 * 27


# attribuire i nomi a righe e colonne

# per prima cosa creiamo tre vettori
cliente1 <- c(75, 121)
cliente2 <- c(24, 78)
cliente3 <- c(43, 57)

# adesso creiamo una matrice
matrice.clienti <- matrix(c(cliente1, cliente2, cliente3), nrow=3, ncol=2, byrow=T)

# stampiamo la nostra matrice
matrice.clienti


# attribuiamo delle etichette alle colonne con colnames()
colnames(matrice.clienti) <- c('acquisto1', 'acquisto2')
                               
# attribuiamo delle etichette alle righe con rownames()
rownames(matrice.clienti) <- c('cliente1', 'cliente2', 'cliente3')

# stampiamo nuovamente la matrice
matrice.clienti

# creiamo un nuovo cliente
cliente4 <- c(85, 94)

# aggiungiamo il cliente alla matrice, creando un nuovo oggetto che si chiama matrice.clienti2
matrice.clienti2 <- rbind(matrice.clienti, cliente4)

# stampiamo l'oggetto matrice.clienti2
matrice.clienti2

# creiamo un nuovo oggetto che andrà a costituire la terza colonna: acquisto3
acquisto3 <- c(92, 87, 65, 102)

# aggiungiamo la quarta colonna alla nostra matrice, creando una matrice clienti aggiornata
matrice.clienti3 <- cbind(matrice.clienti2, acquisto3)

# stampiamo la matrice aggiornata, a cui abbiamo dato il nome di matrice.clienti3

matrice.clienti3

# partiamo sempre dall’ultima matrice che abbiamo creato
matrice.clienti3

# calcoliamo il totale speso da ogni cliente
totale.clienti <- rowSums(matrice.clienti3)

# stampiamo il risultato 
totale.clienti

# stampiamo il totale delle colonne
acquisti.totale <- colSums(matrice.clienti3)

# stampiamo il totale per colonna
acquisti.totale

# calcoliamo la media degli acquisti per il primo cliente, selezionando solo la prima riga
media <- mean(matrice.clienti3[1,])
media


