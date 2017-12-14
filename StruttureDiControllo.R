# istruzioni condizionali: “if”

# creiamo per prima cosa un vettore:
x <- 5

if (x == 5){
        print ("x è uguale a 5")
}


# if else
        
y <- 10

if (y > 5){
        print ("y è maggiore di 5")
}else{
        print ("y è minore di 5")
}

# while
######################
## non eseguire
while(1+1 == 2)
        print("okay")
## non eseguire
######################

# il risultato sarà una lista infinita da cui possiamo uscire solo chiudendo forzatamente il programma

# creiamo l’oggetto “uova”
uova <- 3

# se uova è minore di 4, aggiungiamo un uovo, quando è pari a 4 allora aggiungiamo la farina
while (uova < 4) {
        print("aggiungi un uovo")
        uova <- uova +1
        if ( uova == 4)
                print("ora aggiungi la farina")
}

# break

x <- 1

while (x <= 10) {
        print (x * 2)
        if ( (x * 2) > 20) {
                break
        }
        x <- x + 1
}


# per prima cosa creiamo un vettore
vettore <- c(1,2,3,4,5,6,7,8)

# notazione uno
for (v in vettore) {
        print(v)
}

# notazione 2
for (v in 1:length(vettore)) {
        print(vettore[v])
}


