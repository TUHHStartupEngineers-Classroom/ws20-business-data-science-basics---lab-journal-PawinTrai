1+7
5+5
10*10
1:100

sqrt((2 * 1000 * 5) / 0.25)

Q <- 200
die <- 1:6

D <- 1000
K <- 5
h <- 0.25
sqrt(2 * D * K / h)

D <- 4000
sqrt(2 * D * K / h)

die <- 1:6
mean(die)

round(mean(die))

sample(die, size = 1)
dice <- sample(die, size = 2, replace = TRUE)
dice
sum(dice)

roll <- function() {
  die <- 1:6
  dice <- sample(die, size = 2, replace = TRUE)
  sum(dice)
}
roll()

roll2 <- function(faces) {
  dice <- sample(faces, size = 2, replace = TRUE)
  sum(dice)
}
roll2(faces = 1:6)
roll2(faces = 1:25)

roll2 <- function(faces = 1:6) {
  dice <- sample(faces, size = 2, replace = TRUE)
  sum(dice)
}

roll2()

roll2 <- function(faces = 1:6, number_of_dice = 2) {
  dice <- sample(x = faces, size = number_of_dice, replace = TRUE)
  sum(dice)
}
roll2()
roll2(faces = 1:4, number_of_dice = 4)

calc_EOQ <- function(D = 1000) {
  K <- 5
  h <- 0.25
  Q <- sqrt(2*D*K/h)
  Q
}
calc_EOQ()

probabilities_vector <- c(1/6, 1/6, 1/6, 1/6, 1/6, 1/6)
probabilities_vector

roll3 <- function(faces = 1:6, number_of_dice = 1) {
  dice <- sample(x = faces, size = number_of_dice, 
                 replace = TRUE, 
                 prob = c(0.1, 0.1, 0.1, 0.1, 0.1, 0.5))
  sum(dice)
}
roll3(faces = 1:6, number_of_dice = 1)
results <- replicate(n = 100, expr = roll3(), simplify=TRUE)
hist(results)

