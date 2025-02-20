library(tidyverse)
library(dplyr)
library(hablar)

datos <- read.csv(file = "mexico_covid19.csv",header = TRUE)

#A)muestra los primeros 6 registros
head(datos,6)

#B)muestra las dimensiones de la base de datos y tama�o del archivo
dim(datos)
object.size(datos)

#C)cambia la variable SEXO a categoria 
str(datos)
datos$SEXO<-as.character(datos$SEXO)
str(datos)
# Reemplazar valores categoricos
data2<-mutate(datos,SEXO = ifelse(SEXO == "1", "MUJER",
                                  ifelse(SEXO == "2", "HOMBRE", "NO_ESPECIFICADO")))


# D) Muestra el resumen de casos porsitivos (RESULTADO =1) y negativos
#(RESULTADO = 2) de acuerdo a la variable ENTIDAD y agrupados por la variable SEXO
fe<-select(data2,ENTIDAD,RESULTADO,SEXO)
fe$ENTIDAD<-as.character(fe$ENTIDAD)
fe<-group_by(fe,SEXO)

res<-table(fe$ENTIDAD,fe$RESULTADO,fe$SEXO)                   
res

# E) A partir de la tabla del resumen del punto anterior, genera una gr�fica de barras,
#mediante la forma b�sica de gr�ficos de R. 
barplot(margin.table(res,1),
        main = "Casos por entidad",
        xlab = "Entidades", ylab = "N�mero de casos", horiz = FALSE,
        col = "blue")

#F)Modifica la variable SECTOR a categoria

data2 <- mutate(datos, SECTOR = ifelse(SECTOR == "1", "CRUZ_ROJA", ifelse(SECTOR == "2", "DIF",ifelse(SECTOR== "3", "ESTATAL",
                                                                                                      ifelse(SECTOR == "4", "IMSS", ifelse(SECTOR == "5", "IMSS_BIENESTAR", ifelse(SECTOR == "6", "ISSSTE",
                                                                                                                                                                                   ifelse(SECTOR == "7", "MUNICIPAL", ifelse(SECTOR == "8", "PEMEX", ifelse(SECTOR == "9", "PRIVADA",
                                                                                                                                                                                                                                                            ifelse(SECTOR == "10", "SEDENA", ifelse(SECTOR == "11", "SEMAR", ifelse(SECTOR == "12", "SSA",
                                                                                                                                                                                                                                                                                                                                    ifelse(SECTOR == "13", "UNIVERSITARIO", "NO_ESPECIFICADO"))))))))))))))

#G)Realiza una gr�fica de barras, donde se muestre la cantidad de casos POSITIVOS por cada SECTOR

oax <- select(data2, SECTOR,RESULTADO)

oax<-as.data.frame(table(oax$SECTOR,oax$RESULTADO))

oax
ggplot(data = oax)+
  aes(x=Var1, y = Freq) + 
  geom_bar(stat="identity")

# h) Filtrar la cantidad de casos positivos de la entidad Oaxaca y muestra en forma de resumen,
#cu�ntos de esos casos positivos ten�an obesidad, asma, hipertensi�n y problemas renales cr�nicos
oax<-select(datos,ENTIDAD,RESULTADO,OBESIDAD,ASMA,HIPERTENSION,RENAL_CRONICA)
oax$ENTIDAD<-as.character(oax$ENTIDAD)
oax_pos<-filter(oax,
                ENTIDAD =="Oaxaca"&
                  RESULTADO == 1)
#oax_pos<-filter(oax_pos,OBESIDAD,ASMA,HIPERTENSION,RENAL_CRONICA)
#oax_pos
table(oax_pos$OBESIDAD)
table(oax_pos$ASMA)
table(oax_pos$HIPERTENSION)
table(oax_pos$RENAL_CRONICA)

# i) De los casos positivos de l entidad de Oaxaca, realia un gr�fico b�sico tipo boxplot()
#donde se muestre el comportamiento de edades
oax<-select(datos,ENTIDAD,RESULTADO,EDAD)
oax$ENTIDAD<-as.character(oax$ENTIDAD)
oax_pos<-filter(oax,
                ENTIDAD =="Oaxaca"&
                  RESULTADO == 1)
oax_pos
boxplot(oax_pos$EDAD)
