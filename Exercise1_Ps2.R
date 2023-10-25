## Author: Michelle Papadakis Barradas
## Exercise 1 of Problem set 2
library("tidyverse")
# Creating a function and using  built in data base called "band_instruments"
add_phrase_column <- function(data, uppercase = FALSE) {
  # To combine the name and the instrument in a new column
  data$phrase <- paste(data$name, "plays the", data$plays)
  if (uppercase) {
    data$name <-toupper(data$name)
  }
  return(data)  
}
#Example:
data("band_instruments")
band_instruments <- as.data.frame(band_instruments)

#Calling the function
phrase_uppercase <- add_phrase_column(band_instruments, uppercase = TRUE)

# Print the result
print(phrase_uppercase)
