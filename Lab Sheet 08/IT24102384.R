setwd("C:\\Users\\User\\Desktop\\IT24102384")

data <- read.table("Data - Lab 8.txt", header = TRUE)
fix(data)
attach(data)

popmn <- mean(Nicotine)
popvar <- var(Nicotine)
samples <- c()

for(i in 1:30){
  s<-sample(Nicotine,5,replace=TRUE)
  samples<-cbind(samples, s)
  n<-c(n,paste('S', i))
}

colnames(samples)=n
s.means<-appply(samples,2,mean)
s.vars<-apply(samples,2,var)

samplemean<-mean(s.means)
samplevars<-var(s.means)

#difference between popmean, samplemean:
#Population mean (pop_mean): one fixed number, calculated from the entire dataset.
#Sample mean (sample_mean): many possible values, depends on which sample we take.

popmn
samplemean

truevar=popvar/5
samplevars


#Exercise

setwd("C:\\Users\\User\\Desktop\\IT24102384")


data <- read.table("Exercise - LaptopsWeights.txt", header = TRUE)
fix(data)
attach(data)

weights <- data$Weight.kg.

head(weights)

#Q1
pop_mean <- mean(weights)
pop_sd <- sd(weights)

cat("Population mean =", pop_mean)
cat("Population standard deviation =", pop_sd)

#Q2
set.seed(123)
num_samples <- 25
sample_size <- 6

samples <- matrix(nrow = sample_size, ncol = num_samples)

for (i in 1:num_samples) {
  samples[, i] <- sample(weights, size = sample_size, replace = TRUE)
}

colnames(samples) <- paste("Sample", 1:num_samples, sep = "_")

sample_means <- apply(samples, 2, mean)
sample_sds <- apply(samples, 2, sd)

head(sample_means)
head(sample_sds)

#Q3
mean_of_sample_means <- mean(sample_means)
sd_of_sample_means <- sd(sample_means)

cat("Mean of sample means =", mean_of_sample_means)
cat("Standard deviation of sample means =", sd_of_sample_means)
