pollutantmean <- function(directory, pollutant, id = 1:332){
  totalpol <- 0
  result <- 0
  entries <- 0
  name <- ""
  print(pollutant)
  for (i in id) {
    name<- formatC(i, width=3, flag="0")
    file <- paste(directory, '/', name, '.csv', sep='')
    data <- read.csv(file)
    print(data)
    clean <- data[!is.na(data$nitrate), ]
    print(clean)
#    entries <- entries + nrow(clean)
 #   print(entries)
  #  print(clean)
  #  totalpol <- totalpol + sum(clean)
  #  print(totalpol)
#    result = totalpol/entries
#    print(result)
 }
}
 