---
title: "Mode in R"
---

# Load libraries
library(readr)
library(dplyr)
library(DescTools)

# Read in housing data
brooklyn_one_bed <- read_csv('brooklyn-one-bed.csv')
brooklyn_price <- brooklyn_one_bed$rent

manhattan_one_bed <- read_csv('manhattan-one-bed.csv')
manhattan_price <- manhattan_one_bed$rent

queens_one_bed <- read_csv('queens-one-bed.csv')
queens_price <- queens_one_bed$rent

#Calculate Mean
brooklyn_mean <- mean(brooklyn_price)
manhattan_mean <- mean(manhattan_price)
queens_mean <- mean(queens_price)

#Calculate Median
brooklyn_median <- median(brooklyn_price)
manhattan_median <- median(manhattan_price)
queens_median <- median(queens_price)

#Calculate Mode
brooklyn_mode <- Mode(brooklyn_price)
manhattan_mode <- Mode(manhattan_price)
queens_mode <- Mode(queens_price)

# Don't look below here
# Mean
if(exists('brooklyn_mean')) {
  print(paste("The mean price in Brooklyn is" , round(brooklyn_mean, digits=2))) 
}else{
  print("The mean price in Brooklyn is not yet defined.")
}

if(exists("manhattan_mean")) {
  print(paste("The mean price in Manhattan is", round(manhattan_mean,digits=2)))
} else {
  print("The mean in Manhattan is not yet defined.")
}
if(exists("queens_mean")) {
  print(paste("The mean price in Queens is" , round(queens_mean,digits=2)))
} else {
  print("The mean price in Queens is not yet defined.")
}   

# Median
if(exists("brooklyn_median")) {
  print(paste("The median price in Brooklyn is" , brooklyn_median)) 
}else{
  print("The median price in Brooklyn is not yet defined.")
}

if(exists("manhattan_median")) {
  print(paste("The median price in Manhattan is", manhattan_median))
} else {
  print("The median in Manhattan is not yet defined.")
}
if(exists("queens_median")) {
  print(paste("The median price in Queens is" , queens_median))
} else {
  print("The median price in Queens is not yet defined.")
} 

#Mode
if(exists("brooklyn_mode")) {
  print(paste("The mode price in Brooklyn is" , brooklyn_mode)) 
}else{
  print("The mode price in Brooklyn is not yet defined.")
}

if(exists("manhattan_median")) {
  print(paste("The mode price in Manhattan is", manhattan_mode))
} else {
  print("The mode in Manhattan is not yet defined.")
}
if(exists("queens_median")) {
  print(paste("The mode price in Queens is" , queens_mode))
} else {
  print("The mode price in Queens is not yet defined.")
} 

