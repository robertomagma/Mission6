# STAT E-100
# Fall 2022
# Supplementary R code for Mission #6

############ Health Insurance data set (age) ############

hist(insurance$age, xlab = "Age of Member", col = "steelblue", main="Distribution of Ages")

population_mean = mean(insurance$age) # Calculate the population mean
print(population_mean) # 39.20703

sd(insurance$age)

#define number of samples
n = 1000

#create empty vector of length n
sample_means = rep(NA, n)

#fill empty vector with means
for(i in 1:n){
  sample_means[i] = mean(sample(x=insurance$charges, size=100, replace=TRUE))
}

hist(sample_means, xlab = "Average Age of Sample", col = "steelblue", main="Sampling Distribution of Sample Means")

sample_means[1]
sample_means[2]
sample_means[3]

mean(sample_means) # Average of sample distribution of sample means