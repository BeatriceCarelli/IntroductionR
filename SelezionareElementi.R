# il vettore x contiene 4 elementi, contrassegnati dai caratteri “a”, “b”, “c”, “d”

x <- c("a", "b", "c", "d")

# stampiamo il vettore x
x

# ora selezioniamo il quarto elemento del vettore, tramite le parentesi quadre
x[4]

# con il segno meno, sempre all’interno delle parentesi quadre, eliminiamo il terzo elemento del vettore 
x[-3]

# creiamo un vettore y
y <- c("a", "b", "c", "d", "e","f","g", "h","i","l", "m", "n", "o")

# selezioniamo solo il primo e l’ultimo
y[c(1,13)]

# oppure selezioniamo gli elementi dal terzo al settimo
y[3:7]
