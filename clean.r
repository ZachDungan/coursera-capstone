# R Coursera Capstone File #1

# Set working directory and import packages 

setwd("~/R/Coursera/coursera-capstone")

library(tidytext)
library(dplyr)

# Task 1: Getting and Cleaning the data testing
con<- file("en_US.twitter.txt", "r")
line_twitter <- readLines(con)

# Quiz

#1
file.size("en_US.blogs.txt")

#2
length(line_twitter)

#3
require(stringi)
long_twitter <- stri_length(line_twitter)
max(long_twitter)

con <- file("en_US.blogs.txt", "r")
line_blog <- readLines(con)
long_blog <- stri_length(line_blog)
max(long_blog)

con <- file("en_US.news.txt", "r")
line_news <- readLines(con)
long_news <- stri_length(line_news)
max(long_news)

#4
love_twitter <- grep("love", line_twitter)
length(love_twitter)
hate_twitter <- grep("hate", line_twitter)
length(hate_twitter)

#5
bio_twitter <- grep("biostats", line_twitter)
line_twitter[bio_twitter]

#6
match_twitter<-grep("A computer once beat me at chess, but it was no match for me at kickboxing",line_twitter)
length(match_twitter)

close(con)