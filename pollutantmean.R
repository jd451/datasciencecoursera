pollutantmean <- function(directory, pollutant, id = 1:332){
  totalpol <- 0
  result <- 0
  entries <- 0
  name <- ""
  for (i in id) {
    #keep leading zeroes in file name
    name<- formatC(i, width=3, flag="0")
    file <- paste(directory, '/', name, '.csv', sep='')
    data <- read.csv(file)
    #Remove data except pollutant of interest
    poldata <-subset(data, select = pollutant)
    #Remove NA entries
    entries <- entries + sum(!is.na(poldata))
    totalpol <- totalpol + sum(poldata, na.rm=TRUE)
    result = totalpol/entries
  }
  print(result)
}
 