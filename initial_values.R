#HEALTH FOR EACH CHARACTERS
manman_health_multiplier = 1.0
turtleboy_health_multiplier = 1.5
ratman_health_multiplier = 0.3


#manman initial health
manman_initial_health = generateHealth(manman_health_multiplier)

generateHealth = function(c){
  H0 = ceiling(50*(runif(1)+1))*c ; H0
}


#turtleman initial health
turtleboy_initial_health = generateHealth(turtleboy_health_multiplier)

generateHealth = function(c){
  H0 = ceiling(50*(runif(1)+1))*c ; H0
}

#ratman initial health
ratman_initial_health = generateHealth(ratman_health_multiplier)

generateHealth = function(c){
  H0 = ceiling(50*(runif(1)+1))*c ; H0
}






#DAMAGE FOR EACH CHARACTERS
manman_damage_multiplier = 1.0
turtleboy_damage_multiplier = 0.6
ratman_damage_multiplier = 1.8
x <- c(1:10)          # value of x(value of damage that we need to calculate the normal probability on)


#manman initial damage

all_prob <- c(dnorm(x, mean=5, sd=3)) # storing the normal probabilities calculated on the x vector in the vector called 'all_prob'

manman_damage_inflicted = sample(x, size=1, replace=TRUE, prob=all_prob) * manman_damage_multiplier


#turtleboy initial damage
all_prob <- c(dnorm(x, mean=5, sd=3)) # storing the normal probabilities calculated on the x vector in the vector called 'all_prob'

turtleboy_damage_inflicted = sample(x, size=1, replace=TRUE, prob=all_prob) * turtleboy_damage_multiplier


#ratman initial damage
all_prob <- c(dnorm(x, mean=5, sd=3)) # storing the normal probabilities calculated on the x vector in the vector called 'all_prob'

ratman_damage_inflicted = ceiling(sample(x, size=1, replace=TRUE, prob=all_prob) * ratman_damage_multiplier)






#RECOVERY FOR EACH CHARACTERS


#setup initial variables

a = c(0.01, 0.03, 0.05, 0.07, 0.09, 0.11, 0.12, 0.13, 0.14, 0.15)
weights = c(0.01, 0.02,  0.04, 0.05, 0.08, 0.10, 0.12, 0.15, 0.18, 0.25)

#run sample to generate a hundred values using this model

manman_recovery = sample(x, size=1, prob = weights, replace = TRUE)
turtleboy_recovery = sample(x, size=1, prob = weights, replace = TRUE)
ratman_recovery = sample(x, size=1, prob = weights, replace = TRUE)



