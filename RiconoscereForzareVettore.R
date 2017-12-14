x <- c(1,2,3,4,5,6,7,8,9)

class(x)

mode(x)

typeof(x)

y <- sample(1:1000, 100)

typeof(y)

x <- c(1,2,3,4,5,6,7,8,9)

class(x)

# forziamo la modalità del vettore 
as.character(x)

as.logical(x)

# creiamo un nuovo oggetto
y <- as.character(x)
y


# oppure sovrascriviamo il vecchio vettore
x <- as.character(x)
x

x <- c(1,2,3,4,5,6,7,8,9)
is.character(x)
