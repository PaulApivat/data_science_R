## Week 4 notes

## str() and summary()  are complimentary functions to explore data.frame()

## Simulations
rnorm()  ## generate random normal variates w/ mean, sd
dnorm()  ## evaluate normal prob density w mean/sd, at a vector point
pnorm()  ## evaluate cumulative distri function for normal distri
rpois()  ## random Poisson variates

## d for density
## r for random number generation
## p for cumulative distri
## q for quantile function
## Every distribution has these four, e.g., rpois, dpois, ppois, qpois

## Generating (Pseudo) Random Numbers
rnorm(10)          ## 10 random numbers, mean = 0, sd = 1
rnorm(10, 20, 2)   ## 10 random numbers, mean = 20, sd = 2

## When conducting a SIMULATION, always set.seed(1) to retrieve the SAME
## set of Random Numbers (to reproduce what you've done)

> set.seed(1)
> rnorm(5)
[1] -0.6264538  0.1836433 -0.8356286  1.5952808  0.3295078
> rnorm(5)
[1] -0.8204684  0.4874291  0.7383247  0.5757814 -0.3053884
> set.seed(1)
> rnorm(5)
[1] -0.6264538  0.1836433 -0.8356286  1.5952808  0.3295078


## Generating Random Numbers of a LINEAR MODEL (example)
> set.seed(20)
> x <- rnorm(100)
> e <- rnorm(100, 0, 2)
> y <- 0.5 + 2 * x + e
> summary(y)
Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
-6.4084 -1.5402  0.6789  0.6893  2.9303  6.5052 
> plot(x,y)   ##see plots

## Generating Random Numbers of BINOMIAL model (example)
> set.seed(10)
> x <- rbinom(100, 1, 0.5)
> e <- rnorm(100, 0, 2)
> y <- 0.5 + 2 * x + e
> summary(y)
Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
-3.4936 -0.1409  1.5767  1.4322  2.8397  6.9410 
> plot(x,y)

## Generating Random Numbers of a POISSON distribution (example)
> set.seed(1)
> x <- rnorm(100)
> log.mu <- 0.5 + 0.3 * x
> y <- rpois(100, exp(log.mu))
> summary(y)
Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
0.00    1.00    1.00    1.55    2.00    6.00 
> plot(x,y)


## Simulating R in Random Sampling (example)
> set.seed(1)
> sample(1:10, 4)
[1] 3 4 5 7
> sample(1:10, 4)
[1] 3 9 8 5
> sample(letters, 5)
[1] "q" "b" "e" "x" "p"
> sample(letters, 5)
[1] "j" "t" "l" "q" "v"
> sample(1:10)
[1]  4  7  8  2 10  1  9  6  5  3
> sample(1:10)
[1]  9  4 10  5  3  1  8  6  2  7
> sample(1:10, replace = TRUE)
[1] 8 5 9 7 8 6 6 8 1 5

## R Profiler (part 1)
## Example: Timing Longer Expressions
## (by wrapping everything in ccurly braces <-)

system.time({           
        n <- 1000
        r <- numeric(n)
        for (i in 1:n) {
                x <- rnorm(n)
                r[i] <- mean(x)
                }
        })
user  system elapsed       
0.113   0.004   0.122 

## because it's not multi-threaaded and no network activiity;
## so user time (0.113) and elapsed (0.122) are close

## system.time() assumes you know where the problem is

**DO NOT USE Rprof() with system.time()
## use summaryRprof() function tabulates the R profiler output
## Two menthods to normalize data from R profiler

by.total
by.self





