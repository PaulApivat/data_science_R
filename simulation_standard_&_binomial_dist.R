## Simulating_binomial_&_standard_distribution in R

sample(1:6, 4, replace = TRUE)   

## generate random sample of numbers from 1 - 6
## only generate four digits, WITH replacement (each number is 'replaced)
## after it is selected, so the same number CAN show up more than once

sample(1:20, 10, replace = FALSE)
sample(1:20, 10)

## Permute all 26 letters of the alphabet
sample(LETTERS)

## Assign Probabilities to a Coin Flip
| sample() to draw a sample of size 100 from the vector c(0,1), with
| replacement. Since the coin is unfair, we must attach specific
| probabilities to the values 0 (tails) and 1 (heads) with a fourth
| argument, prob = c(0.3, 0.7). Assign the result to a new variable called
| flips.

flips <- sample(c(0,1), 100, replace = TRUE, prob = c(0.3, 0.7))

## add up all the 1s and 0s, giving the total number of 1s in flips
sum(flips)

## BINOMIAL DISTRIBUTION
rbinom()  #random binomial probability distribution
dbinom()  #density
qbinom()  #quantile
pbinom()  #probability

# flips <- sample(c(0,1), 100, replace = TRUE, prob = c(0.3, 0.7))
rbinom(1, size = 100, prob = 0.7)

## generate a single random variable that represents the number of heads in 100 flips 
#if we want to see all of the 0s and 1s, we can request 100
#| observations, each of size 1, with success probability of 0.7. Give it a
#| try, assigning the result to a new variable called flips2.

flips2 <- rbinom(100, size = 1, prob = 0.7)

## Standard Normal Distribution

dnorm(x, mean = 0, sd = 1, log = FALSE)
pnorm(q, mean = 0, sd = 1, lower.tail = TRUE, log.p = FALSE)
qnorm(p, mean = 0, sd = 1, lower.tail = TRUE, log.p = FALSE)
rnorm(n, mean = 0, sd = 1)    ##Standard Normal Distribution

rnorm(10)  # ten normally distributed number, default mean = 0, sd = 1
rnorm(10, mean = 100, sd = 25)

rpois(5, lambda = 10)  ## 5 random values from poisson distribution with mean 10

replicate(100, rpois(5, lambda = 10))  ##replicate this operation 100 times
## replicate created a matrix, each column contains 5 random numbers

## Now we can find the mean of each column in my_pois using the colMeans() function.
cm <- colMeans(my_pois)
hist(cm)  ## create a histogram of cm

## All standard probability distributions built into R
rexp()    ##exponential
rchisq()  ##chi-squared
rgamma()   ##gamma









