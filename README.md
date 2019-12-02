# advent-of-code 

# 1.
input1 <- read.table("F:/jpkim/advent/day1_1.txt")
results1 <- sum(floor(input1/3)- 2)




# 2.
mass <- read.table("F:/jpkim/advent/day1_2.txt")

func <- function (x){
  fuel <- floor(x/3) -2
  print(fuel)
  res <- ifelse(any(fuel > 0), sum(fuel) + sum(func(fuel[fuel >= 9])), return(x)) 
  print(res)
  return(res)
}

results2 <- func(mass)
print (results2)
