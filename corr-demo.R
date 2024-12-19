corr <- function(directory, threshold =0){
  #Create empty data frame
  df <- data.frame()
  #Import funciton to check complete obs 
  df <- complete(directory, ident = 1:332)
  
  #Create new dataset of files that pass threshold
  above <-df[df$nobs > threshold,]
  print(above)
  
  
}