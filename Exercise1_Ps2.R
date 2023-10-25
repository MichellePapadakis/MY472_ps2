## Author: Michelle Papadakis Barradas
## Exercise 1 of Problem set 2

# Instructions: Defining a function with a single argument data, 
# that takes a dataset and performs some input transformation on it. 
library("tidyverse")
# Using  built in data base called "band_instruments"

add_phrase_column <- function(data) {
  # Combinar nombre e instrumento en la columna "phrase"
  data$phrase <- paste(data$name, "plays the", data$plays)
  return(data)  # Devolver el data frame con la columna "phrase" agregada
}

# Ejemplo de uso:
library("tidyverse")
data("band_instruments")
band_instruments <- as.data.frame(band_instruments)

# Llamar a la función para agregar la columna de frase
band_instruments_with_phrase <- add_phrase_column(band_instruments)

# Imprimir el resultado
print(band_instruments_with_phrase)
