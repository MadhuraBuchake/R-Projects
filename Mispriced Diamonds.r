mydata <- read.csv(file.choose())
ggplot(data=mydata[mydata$carat<2.5,], 
       aes(x=carat, y=price, colour=clarity)) +
  geom_point(alpha=0.1) + geom_smooth()

https://user-images.githubusercontent.com/34618545/41689957-522b0562-74c1-11e8-9f35-78664f4e9917.png


