# creiamo un vettore
vettore <- 1:10
# creiamo una matrice
matrice <- matrix(20:34, nrow=5)

# creiamo una lista
lista <- list(vettore, matrice)

# stampiamo la lista
lista

test.lista <- list(
        1:5,
        c(TRUE, FALSE, FALSE, TRUE),
        c("primo", "secondo", "terzo"),
        sum,
        matrix(1:9, ncol=3, nrow=3)
)

# stampiamo adesso la lista
test.lista


test.lista[[3]]

test.lista[[3]][1]
