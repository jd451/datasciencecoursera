pollutantmean <- function(directory, pollutant, id = 1:332){
  totalpol <- 0
  result <- 0
  entries <- 0
  name <- ""
  for (i in id) {
    name<- formatC(i, width=3, flag="0")
    file <- paste(directory, '/', name, '.csv', sep='')
    data <- read.csv(file)
    poldata <-subset(data, select = pollutant)
    entries <- sum(!is.na(poldata))
    print(entries)
    totalpol <- totalpol + sum(poldata, na.rm=TRUE)
    print(totalpol)
    result = totalpol/entries
    print(result)
 }
}
 