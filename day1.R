# 1.
mass1 <- read.table("file_path")
results1 <- sum(floor(mass1/3)- 2)




# 2.
mass2 <- read.table("file_path")

func <- function (x){
  fuel <- floor(x/3) -2
  print(fuel)
  res <- ifelse(any(fuel > 0), sum(fuel) + sum(func(fuel[fuel >= 9])), return(x)) 
  print(res)
  return(res)
}

results2 <- func(mass2)


