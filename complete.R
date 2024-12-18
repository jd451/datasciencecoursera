complete <- function(directory, ident=1:332){
  #Create empty data frame
  df <- data.frame()
  
  #Populate data frame using a for loop
  for (i in ident) {
    #Get the row data
    csv <- i
    
    name<- formatC(i, width=3, flag="0")
    file <- paste(directory, '/', name, '.csv', sep='')
    data <- read.csv(file)
    completed <- data[complete.cases(data), ]
    pollut <- nrow(completed)
    #Populate the row
    new.row <- data.frame(id = csv, nobs = pollut)
    
    #Add the row
    df <- rbind(df, new.row)
  }
}