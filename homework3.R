mn <- mean(mtcars$mpg)
s <- sd(mtcars$mpg)
z <- qnorm(.05)
mu0 <- mn - z * s / sqrt(nrow(mtcars))

mpg4<-mtcars$mpg[mtcars$cyl==4]
mpg6<-mtcars$mpg[mtcars$cyl==6]

t.test(mpg4,mpg6, var.equal=FALSE, paired=FALSE)
ans <- round(pbinom(54, prob = .5, size = 100, lower.tail = FALSE),4)

pv <- ppois(15800 - 1, lambda = 520 * 30, lower.tail = FALSE)
pnorm(15800 / 30, mean = 520, sd = sqrt(520 / 30), lower.tail = FALSE)


m1 <- 10; m2 <- 11
n1 <- n2 <- 100
s <- 4
se <- s * sqrt(1 / n1 + 1 / n2)
ts <- (m2 - m1) / se
pv <- 2 * pnorm(-abs(ts))


power <- pnorm(10 + qnorm(.95) * .4, mean = 11, sd = .4, lower.tail = FALSE)


n <- (qnorm(.95) + qnorm(.8)) ^ 2 * .04 ^ 2 / .01^2


mpg8<-mtcars$mpg[mtcars$cyl==8]
mpg6<-mtcars$mpg[mtcars$cyl==6]
n8<-length(mpg8)
n6<-length(mpg6)
s6<-sd(mpg6)
s8<-sd(mpg8)
m6<-mean(mpg6)
m8<-mean(mpg8)
p <- t.test(mpg8, mpg6, paired = FALSE, alternative="two.sided", var.equal=TRUE)$p.value
mixprob <- (n8 - 1) / (n8 + n6 - 2)
s <- sqrt(mixprob * s8 ^ 2  +  (1 - mixprob) * s6 ^ 2)
z <- (m8 - m6) / (s * sqrt(1 / n8 + 1 / n6))
pz <- 2 * pnorm(-abs(z))
## Hand calculating the T just to check
#2 * pt(-abs(z), df = n8 + n6 - 2)


mn <-1100
s <- 30
n <- 9
mn + c(-1, 1) * qt(0.975, n - 1) * s/sqrt(n)


Baseline = c(140,138,150,148,135)
Week2=c(132,135,151,146,130)
t.test(Baseline-Week2)
t.test(Baseline,Week2, var.equal=FALSE, paired=FALSE)


m1 <- -3; m2 <- 1
n1 <- n2 <- 9
s1 <- 1.5
s2<-1.8
se <- sqrt(s1^2 / n1 + s2^2 / n2)
ts <- (m2 - m1) / se
pv <- 2 * pnorm(-abs(ts))


power <- pnorm(10 + qnorm(.95) * .4, mean = 11, sd = .4, lower.tail = FALSE)


power.t.test(n = 100, delta = 0.01, sd = 0.04, type = "one.sample", alt = "one.sided")$power


m1 <- 44; m2 <- 42.04
n1 <- n2 <- 288
s <- 12
se <- s * sqrt(1 / n1 + 1 / n2)
ts <- (m2 - m1) / se
pv <- 2 * pnorm(-abs(ts))