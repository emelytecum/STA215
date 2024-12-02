# example

# set working directory
setwd("~/Desktop/sta215")

# install "haven" packag 
install.packages("haven")

# load "haven" package
library("haven")

# load raw data
raw_data <- read.csv("raw_data.csv")

Table 1: descriptive statistics 
table(raw_data$crime)
mean(raw_data$crime)
sd(raw_data$crime)

table(raw_data$crime_solved)
mean(raw_data$crime_solved)
sd(raw_data$crime_solved)

table(raw_data$dead_body_count)
mean(raw_data$dead_body_count)



Figure 1: boxplot
lm(dead_body_count ~ crime, data = raw_data)
aov(dead_body_count ~ crime, data = raw_data)
summary(dead_body_count ~ crime, data = raw_data)
boxplot(dead_body_count ~ crime, data = raw_data)

lm(scene_time ~ crime_solved, data = raw_data)
aov(scene_time ~ crime_solved, data = raw_data)
summary(scene_time ~ crime_solved, data = raw_data)
boxplot(scene_time ~ crime_solved, data = raw_data)

figure 2 
plot(dead_body_count ~ scene_time, data = raw_data)
lm(dead_body_count ~ scene_time, data = raw_data)
summary(dead_body_count ~ scene_time, data = raw_data)
abline(h= meanx, col = "black")
abline(v= meany, col = "black")

figure 3: residual plot
plot(dead_body_count ~ scene_time, data = raw_data)
resid(dead_body_count ~ scene_time, data = raw_data)
abline(h = 0, col= "red")

table 2: contigence table 
table(raw_data$crime, raw_data$crime_solved)

chisq.test(raw_data$crime, raw_data$crime_solved)
