# Script R Google Trends
# Autor do Repositorio: Hugo Kenzo Ogata
# Desenvolvido: Hugo Kenzo Ogata
# Ultima atualização: 20-11-2020
# Descrição: Script em R para consultas de dados do Google Trends por Geolocalização. Esse tipo de extração não permite que seja criada um dimensão temporal dia por dia dos resultados apenas o compilados dos dados de acordo com periodo setado no script.


library(gtrendsR)
Smartphones <- gtrends(keyword = c("Samsung", "Apple", "Xiaomi"), 
                       geo = "BR", time = "2020-01-01 2020-06-30", gprop = "web", 
                       low_search_volume = FALSE, onlyInterest = FALSE)

region_trend <- Smartphones$interest_by_region
city_trend <- Smartphones$interest_by_city