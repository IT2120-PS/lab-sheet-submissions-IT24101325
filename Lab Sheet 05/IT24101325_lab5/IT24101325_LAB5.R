setwd("C:\\Users\\IT24101325\\Desktop\\IT24101325_lab5")
Delivery.Times<-read.table ("Exercise - Lab 05.txt",header = TRUE,)
head(Delivery.Times)

hist(Delivery.Times$Delivery_Time_.minutes., 
     breaks = seq(20, 70, length.out = 10), 
     right = TRUE,                          
     main = "Histogram of Delivery Times",  
     xlab = "Delivery Time",               
     col = "lightblue",                     
     border = "black") 

hist_data <- hist(Delivery.Times$Delivery_Time_.minutes.,
                  breaks = seq(20, 70, length.out = 10),
                  right = FALSE,
                  plot = FALSE)

cum_freq <- cumsum(hist_data$counts)
class_boundaries <- hist_data$breaks[-1]

plot(class_boundaries, cum_freq,
     type = "o", col = "blue",
     xlab = "Delivery Time (minutes)",
     ylab = "Cumulative Frequency",
     main = "Cumulative Frequency Polygon (Ogive)")



