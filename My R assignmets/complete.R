complete <- function(id=1:332) 

{

        
    data_result <- data.frame()
   # colnames(data_result) <- c("id","nobs")
    files_list_vector <- list.files()
    
    
    for(i in id)
    {
        
      data_file <- read.csv(files_list_vector[i])
      
      sulfate_complete <- sum(!is.na(data_file[,"sulfate"]))
      
      #nitrate_complete <- sum(!is.na(data_file[,"nitrate"]))
      
      #total_complete <- sum(sulfate_complete ,nitrate_complete)
      
      total_complete <- sulfate_complete
      
      data_result <- rbind(data_result,c(i,total_complete))
      
      colnames(data_result) <- c("id","nobs")
      
     }

    
    print(data_result)
    
}