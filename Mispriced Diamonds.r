#Check ReadMe for description of the problem statement
mydata <- read.csv(file.choose())
ggplot(data=mydata[mydata$carat<2.5,], 
       aes(x=carat, y=price, colour=clarity)) +
  geom_point(alpha=0.1) + geom_smooth()

#To view the plot, please check the Read Me file.
#Data Insights: 
#From the plot we can observe that clarity of 'IF' type of diamond is the best of all and clarity of 'I1' is the least of all.
#Since there is some intersection of lines for price range between 15000 and 175000 AND around 2.0 carat of diamonds, diamonds are mispriced for this category
#Wherever there is intersection of lines, we can say diamonds are mispriced. 
#We can also see that there is higher probability of purchasing 1carat diamonds for price between 4000 and 6000.


