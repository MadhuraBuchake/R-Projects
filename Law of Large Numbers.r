#Check ReadMe for description of the problem statement
#Law of Large Numbers
N = 100000
count = 0
for(i in rnorm(N)){
  if(i > -1 & i < 1){
    count <- count + 1
  }
}
result <- count/N
result
