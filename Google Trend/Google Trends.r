
# Script R Google Trends
# Autor do Repositorio: Hugo Kenzo Ogata
# Desenvolvido: Hugo Kenzo Ogata
# Ultima atualização: 20-11-2020
# Descrição: Script em R para consultas de dados do Google Trends


install.packages('gtrendsR')
library (gtrendsR)
#define the keywords
keywords=c("Samsung","Xiaomi","Apple")
#set the geographic area: BR = Brazil default para todo o mundo, podemos utilizar também: c("BR", "US")
country=c('BR') 
#set the time window
time=("2020-01-01 2020-05-26") #Data inicial Data final
#set channels 
channel='web'  #Opções: 'web',"news","images", "froogle", "youtube"

trends = gtrends(keywords, gprop =channel,geo=country, time = time )
#select only interst over time 
time_trend=trends$interest_over_time
head(time_trend)


#### Opção 2 do Codigo

data_scientist <- gtrends(c("Aprendizado de Máquina", "Big Data", "R Linguagem de programação", "Estatística"),
                          geo = c("BR"),    #default para todo o mundo, podemos utilizar também: c("BR", "US")
                          time = "2004-01-01 2014-12-31",  #Data inicial Data final
                          gprop = c("web"), #Opções: "news","images", "froogle", "youtube"
                          category = 0,     #Zero é defaul, uma lista de categorias pode ser conferida abaixo
                          hl = "pt-BR"        
                          )


#Exemplos retirados do manual do pacote de como é possível alterar o formato das datas de busca:

## Playing with time format
# gtrends(c("R Studio", "Machine Learning"), time = "now 1-H") # última hora
# gtrends(c("R Studio", "Machine Learning"), time = "now 4-H") # últimas 4 horas
# gtrends(c("R Studio", "Machine Learning"), time = "now 1-d") # último dia
# gtrends(c("R Studio", "Machine Learning"), time = "today 1-m") # últimos 30 dias
# gtrends(c("R Studio", "Machine Learning"), time = "today 3-m") # últimos 90 dias
# gtrends(c("R Studio", "Machine Learning"), time = "today 12-m") # últimos 12 meses
# gtrends(c("R Studio", "Machine Learning"), time = "today+5-y") # últimos 5 anos (default)
# gtrends(c("R Studio", "Machine Learning"), time = "all") # desde 2004