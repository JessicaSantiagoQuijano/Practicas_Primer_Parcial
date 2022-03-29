library(tidyverse)
library(dplyr)
library(hablar)

datos <- read.csv(file = "mexico_covid19.csv",header = TRUE)

#A)muestra los primeros 6 registros
head(datos,6)

#B)muestra las dimensiones de la base de datos y tamaño del archivo
dim(datos_art)
object.size(datos)

#C)cambia la variable SEXO a categoria 
newdata <- mutate(datos, SEXO = ifelse(SEXO == 1, "MUJER", ifelse(SEXO == 2, "HOMBRE", "NO_ESPECIFICADO")))


#Muestra el resumen del promedio de casos porsitivos...
Sexo <- as.factor(datos$SEXO)
agrupacion <- group_by(datos,SEXO)
newdatal <- select(datos, ENTIDAD)
newdata6 <- filter(datos, RESULTADO == 1)
newdata7 <- filter(datos, RESULTADO == 2)
promedio <- newdata13 <- summarise(agrupacion, promedio_Positivos = mean(newdata6, na.rm = TRUE), promedio_Negativos = mean(newdata7, na.rm = TRUE))
promedio

#F)Modifica la variable SECTOR a categoria

newdata2 <- mutate(datos, SECTOR = ifelse(SECTOR == 1, "CRUZ_ROJA", ifelse(SECTOR == 2, "DIF",ifelse(SECTOR== 3, "ESTATAL",
                                   ifelse(SECTOR == 4, "IMSS", ifelse(SECTOR == 5, "IMSS_BIENESTAR", ifelse(SECTOR == 6, "ISSSTE",
                                   ifelse(SECTOR == 7, "MUNICIPAL", ifelse(SECTOR == 8, "PEMEX", ifelse(SECTOR == 9, "PRIVADA",
                                   ifelse(SECTOR == 10, "SEDENA", ifelse(SECTOR == 11, "SEMAR", ifelse(SECTOR == 12, "SSA",
                                   ifelse(SECTOR == 13, "UNIVERSITARIO", "NO_ESPECIFICADO"))))))))))))))
                                                                            
#G)Realiza una gráfica de barras
newdata6 <- filter(datos, RESULTADO == 1)
ggplot(data = datos) + geom_bar(mapping = aes(x = newdata2, y = newdata6), color = "blue")
