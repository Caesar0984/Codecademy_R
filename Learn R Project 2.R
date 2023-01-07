---
title: "1985 Cars"
---
  
# Task 1 load libraries
library(readr)
library(dplyr)

# Task 2 load data
cars <- read_csv("C:/Users/Dell/Downloads/Learning Materials/Career Prep/Programming/R/Codecademy Learn R/cars85.csv")

# Task 3 inspect data
head(cars)
summary(cars)

# Task 4 select columns
cars <- cars %>%
  select(-normalized_losses)

# Task 5 view columns
cars

# Task 6 rename column
cars <- cars %>%
  rename(risk_factor = symboling)
cars

# Task 7 define threshold
mpg_threshold <- 30

# Task 8 add column
cars <- cars %>%
  mutate(mpg_diff_from_threshold = highway_mpg - mpg_threshold)
cars

# Task 9 filter rows
mpg_exceeds_threshold <- cars %>%
  filter(mpg_diff_from_threshold > 0)
mpg_exceeds_threshold

# Task 10 arrange rows
mpg_exceeds_threshold <- mpg_exceeds_threshold %>%
  arrange(desc(mpg_exceeds_threshold))

# Task 11 order rows by engine size
ordered_by_engine_size <- cars %>%
  arrange(desc(engine_size))
ordered_by_engine_size

# Task 12 choose make
chosen_make <- 'mercedes-benz'

# Task 13 filter rows by make
chosen_make_details <- cars %>%
  filter(make == chosen_make)

# Task 14 order filtered rows by engine size
chosen_make_details <- chosen_make_details %>%
  arrange(desc(engine_size))
chosen_make_details
