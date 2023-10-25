## Author: Michelle Papadakis Barradas
## Exercise 1 of Problem set 2

# Instructions: Defining a function with a single argument data, 
# that takes a dataset and performs some input transformation on it. 
library("tidyverse")
# Using  built in data base called "band_instruments"

add_phrase_column <- function(data) {
  # Combining names and instruments in the column phrase
  data$phrase <- paste(data$name, "plays the", data$plays)
  return(data)  
}

#Example 
library("tidyverse")
data("band_instruments")
band_instruments <- as.data.frame(band_instruments)

#Calling the function
band_instruments_with_phrase <- add_phrase_column(band_instruments)

# Print the result
print(band_instruments_with_phrase)
