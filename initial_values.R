#HEALTH FOR EACH CHARACTERS
manman_health_multiplier = 1.0
turtleboy_health_multiplier = 1.5
ratman_health_multiplier = 0.3


#manman initial health
manman_initial_health = generateHealth(manman_health_multiplier)

generateHealth = function(c){
  H0 = ceiling(50*(runif(1)+1))*manman_health_multiplier ; H0
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


