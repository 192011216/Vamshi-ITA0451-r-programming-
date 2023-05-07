sample_data<- data.frame( x=c(1,2,3,4,5,6),
                          y=c(3,2,4,2,34,5))
print( "original data:")
sample_data
  
# apply sapply() function
print("data after sapply():")
sapply(sample_data, max)
