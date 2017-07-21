pollutantmean <-  function(directory,pollutant,id=1:332)
{
    setwd(directory)                   #Setting R environment to setdata directory
    files_list_vector <- list.files()  #Storing list of files as charactor vector
    load <- data.frame()               #Creating an empty DataFrame
    
    for(i in id) 
    {
        
        temp <- read.csv(files_list_vector[i])
        
        load <- rbind(load,temp)
    
     }

 mean(load[,pollutant],na.rm = TRUE)   
    
}