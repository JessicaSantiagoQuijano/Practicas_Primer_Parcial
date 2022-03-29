#FUNCIONES DE AYUDA

help(mean)

?mean

help.search("mediam")

#TIPOS DE DATOS (CREACIÓN DE VARIABLES)

doub <- 4

doub = 4
doub #

int = as.integer(4)
int #

logi = FALSE
logi

char1 = "Hola"
char1

char2 <- "5 + 6"
char2

#COMPROBACIÓN DEL TIPO DE UNA VARIABLE

typeof(doub)

typeof(int)

typeof(char1)

#OPERADORES BASICOS

2^3

9/6

9%/%6

9%%6

a = 2 + 2
b = 3 * 2
b - a -> c

a
b
c

a == 5
a == 4 & b < 2
a == 4 | b < 2
a == 4 | b < 2 & c != 9

#CREACIONES DE ESTRUCTURA DE DATOS
#VECTORES

vec = c(1,3,14)
vec

#MATRICES

mat1 <- matrix(c(1,2,3,4,5,6), nrow = 2, ncol = 3)
mat1

mat2 <- matrix(c(1,2,3,4,5,6), nrow = 2, ncol = 3, byrow = TRUE)
mat2

#ARRAY

arr <- array(c(1,2,3,4,5,6,7,8), dim = c (2,2,2))
arr

#MATRICES

m <- matrix(c(1,1,2,1), 2,2)
m

#FACTORES Y FACTORES ORDENADOS

fac <- factor(c("H","M","M","H","H","M"), levels = c("H","M"))
fac

ord <- ordered(c(1,2,1,2,3,1,2,1,2), levels = c(1,2,3))
ord2 <- ordered(c(1,2,1,2,3,1,2,1,2), levels = c(2,3,1))
ord3 <- ordered(c(1,2,1,2,3,1,2,1,2), levels = c(3,1,2))

ord
ord2
ord3

fac <- factor(c("H","M","M","H","H","M"), levels = c("H","M"))
fac2 <- factor(c("H","M","M","H","H","M"), levels = c("M","H"))

#DATA FRAMES Y LISTAS

a <- c(1,5,4)
b <- c("hola", "adios", "hasta luego")
c <- c(TRUE, FALSE, FALSE)
d <- c(1,2,3,4,5)
dataframe <- data.frame(a, b, c)
dataframe

list1 <- list(a,b,c)
list1

list2 <- list(a,b,c,d)


#ACCESO A LOS ELEMENTOS DE LAS ESTRUCTURAS DE DATOS

vec <- c(1,3,14)
vec[3]

mat1 <- matrix(c(1,2,3,4,5,6), nrow = 2, ncol = 3)
mat1
mat1[2,3]

arr <- array(c(1,2,3,4,5,6,7,8), dim = c(2,2,2))
arr

arr[2,1,2]

mat1[c(1,2),3]

mat1[1,]

mat1[,c(1,2)]

fac[2]

ord[c(2,5)]

dataframe$a

dataframe$a[1]

dataframe[1,]

list1[[2]]
list1[[4]][2]

#EJEMPLOS

peso <- c(19.14,15,17,20,23,30,19,25)
peso < 20
peso < 20 | peso > 25
peso[peso < 20]
peso[peso < 20 & peso != 15]
trat <- c(rep("A",3), rep("B", 3), rep("C",3))
peso[trat == "A"]
peso[trat == "A" | trat == "B"]
split(peso,trat)
split(peso,trat)$A
x <- 1:15; length(x)
y <- matrix(5, nrow = 3, ncol = 4); dim(y)
is.vector(x); is.vector(y); is.array(x)
x1 <- 1:5; x2 <- c(1,2,3,4,5); x3 <- "patata"
typeof(x1); typeof(x2); typeof(x3)
mode(x); mode(y); z <- c(TRUE,FALSE); mode(z)
attributes(y)
w <- list(a = 1:3, b = 5); attributes(w)
y <- as.data.frame(y); attributes(y)

#EJEMPLOS: GENERACION DE SECUENCIAS

x <- c(1, 2, 3, 4, 5)
x <- 1 : 10 ; y <- -5 : 3
1 : 4 + 1; 1 : (4 + 1)
x <- seq(from = 2, to = 18, by = 2) 
y <- seq(along = x)
z <- c(1 : 5, 7:10, seq(from=-7, to=5, by=2))
rep(1, 5) 
x <- 1:3; rep(x, 2)
y <- rep(5, 3); rep(x, y)
rep(1 : 3, rep(5, 3))
rep(x, x)
rep(x, length = 8)
gl(3, 5) 
gl(4, 1, length = 20) 
gl(3, 4, label = c("Rubio", "Moreno", "Pelirrojo"))

#EJEMPLOS: SELECCION DE DOS ELEMENTOS DE UN VECTOR

x <- 1:7; x[1]; x[3]; x[c(2,6)] # el 
x[x > 4]
x > 4
y <- x > 4
x[y]
x[-c(1, 5)]; y <- c(1, 2, 6); x[y]
names(x) <- c("a", "b", "c", "d", "e", "manzana") 
x[c("a", "e", "manzana")]

#EJEMPLOS: ORDENACION DE VECTORES

x <- c(7, 4, 5, 9, 1)
order(x)
sort(x)
rev(x)
rank(x)
x[order(x)]
y <- c(1, 5, 5, 5, 7, 7, 9, 9, 9, 9); rank(x, y)
min(x); which.min(x); which(x == min(x))
y <- c(1, 1, 2, 2, 3); order(y, x)

#EJEMPLOS DE VECTORES DE CARACTERES

paste1 <- paste(c("I", "J", "M"), 3:5, sep = "")
paste2 <- paste(c("I", "J", "M"), 3:5, sep = ".")
unir1 <- paste(c("el", "sol", "brilla"), collapse =" ")
unir2 <- paste(c("el", "sol", "brilla"), collapse ="-")
unir3 <- paste(c("el", "sol", "brilla"))
letras <- LETTERS[1:9]; números <- 7:15
unir4 <- paste(letras, números, sep ="")
substr("abcdef", 2, 4)
x <- paste(LETTERS[1:7], collapse = "")
substr(x, 3, 7) <- c("xyz")
x <- c(60, 90, 903); y <- factor(x); x ; y
as.numeric(as.character(y))
factor1 <- factor(c("alto", "bajo", "medio"))
factor2 <- factor(c("alto", "bajo", "medio"), levels = c("bajo", "medio", "alto")) 

#EJEMPLOS DE ARRAYS Y MATRICES

a <- 1:24; dim(a) <- c(3,4,2)
arr1 <- array(7, dim = c(4,5))
mat1 <- matrix(10:29, nrow = 5)
mat2 <- matrix(10:29, nrow = 5, byrow = TRUE)
mat3 <- 10:29; dim(mat3) <- c(5, 4)
a[1,1,1]; a[1,1,2]; a[3,4,2]
a[2, , ]
a[,3 , ] 
mat3[1, ]; mat3[, 2]; mat3[c(1, 3), c(2, 4)]
mat4 <- matrix(c(1, 3, 2, 4), nrow = 2); mat4
mat3[mat4] 
m1 <- matrix(1: 4, nr = 2, nc = 2)
m2 <- matrix(6: 9, nr = 2, nc = 2)
rbind(m1, m2) 
cbind(m1, m2) 
diag(m1) 

#EJEMPLOS DE DATA FRAMESY LISTAS

x <- 1:4; n <- 10; M <- c(10, 35); y <- 2:5 ; x; n; M; y
data.frame(x, n)
data.frame(x, M)
data.frame(x, y)
l1 <- list(x, y); l2 <- list(A = x, B = y) ; l1; l2
names(l1)
names(l2)