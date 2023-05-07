fibonacci <- function(n) {
  if(n <= 1) {
    return(n)
  } else {
    return(fibonacci(n-1) + fibonacci(n-2))
  }
}

for(i in 0:10) {
  result <- fibonacci(i)
  cat(result, " ")
}
