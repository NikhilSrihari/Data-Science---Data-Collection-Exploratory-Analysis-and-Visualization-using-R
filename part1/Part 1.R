foo <- 2
bar <- 4
foo + bar
result <- foo + bar
result

list <- c(2,4,6,8)
list[2]
list[1]
list[0]
list[5]

10/2
10^2
4*5
1+6
2==0
(2+2)==4
T==TRUE
F && T
F || TRUE

vect <- c(1,2,3,4,5,6,7,8,9,10)
vect*2

sqrt(vect)

vect = c(2,4,6,8)
names(vect) = c("1st","2nd","3rd","4th")
vect
vect["2nd"] <- 20
vect

demo(graphics)

# Function for printing out all the squares upto x
generateSquares <- function(x) {
  for(i in 1:x) {
    y <- i^2
    print(y)
  }
  return(x^2)
}
a = generateSquares(4)
print(a)
# Creating a function that takes arguments
func_arguments <- function(a=1,b=2,c=3) {
  res <- a + (b * c)
  print(res)
}
#calling by default
func_arguments()
# Calling by position
func_arguments(4,5,6)
# Calling by names
func_arguments(a = 4, b = 5, c = 3)

# Create the data frame.
mydataframe <- data.frame(
  stu_id = c(1:5),
  stu_name = c("Bob","Pat","Jane","Peter","Han"),
  stringsAsFactors = FALSE
)
# Extract columns
res <- data.frame(mydataframe$stu_id, mydataframe$stu_name)
print(res)






#Problem 1
sales1<-c(12,14,16,29,30,45,19,20,16, 19, 34, 20)
sales2<-rpois(12,34)  # random numbers, Poisson distribution, mean at 34, 12 numbers
par(bg="cornsilk")

plot(sales1, col="blue", type="o", ylim=c(0,100), xlab="Month", ylab="Sales" )
title(main="Sales by Month")

lines(sales2, type="o", pch=22, lty=2, col="red")
grid(nx=NA, ny=NULL)
legend("topright", inset=.05, c("Sales1","Sales2"), fill=c("blue","red"), horiz=TRUE)



#Problem 2
sales<-read.table(file.choose(), header=T)
sales  # to verify that data has been read
barplot(as.matrix(sales), main="Sales Data", ylab= "Total",beside=T, col=rainbow(5))



#Problem 3
fn<-boxplot(sales,col=c("orange","green"))$stats

text(1.45, fn[3,2], paste("Median =", fn[3,2]), adj=0, cex=.7)
text(0.45, fn[3,1],paste("Median =", fn[3,1]), adj=0, cex=.7)
grid(nx=NA, ny=NULL)


#Problem 4
#fb1<-read.csv("http://real-chart.finance.yahoo.com/table.csv?s=FB&d=10&e=5&f=2014&g=d&a=11&b=12&c=2013&ignore=.csv")
#We can do the above. But the links are not available. So I have downloaded the files into csv files in the data directory.
fb1<-read.csv(file.choose())
aapl1<-read.csv(file.choose())
par(bg="cornsilk")
plot(aapl1$Adj.Close, col="blue", type="o", ylim=c(0,100), xlab="Days", ylab="Price" )
lines(fb1$Adj.Close, type="o", pch=22, lty=2, col="red")
legend("topright", inset=.05, c("Apple","Facebook"), fill=c("blue","red"), horiz=TRUE)
#Just study the distribution of the adjusted close of the stock price of Apple.
hist(aapl1$Adj.Close, col=rainbow(8))
