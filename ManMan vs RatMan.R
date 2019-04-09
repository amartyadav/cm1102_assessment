#health and damage vector for storing health value and damage value for 100 steps
healthManMan <- c(1:10)
damageManMan <- c(1:10)
healthRatMan <- c(1:10)
damageRatMan <- c(1:10)

#generating initial health for ManMan and RatMan
manman_health_multiplier = 1.0
ratman_health_multiplier = 0.3

#manman initial health
healthManMan[1]= generateHealth(manman_health_multiplier)

generateHealth = function(c){
  H0 = ceiling(50*(runif(1)+1))*c ; H0
}

#ratman initial health
healthRatMan[1] = generateHealth(ratman_health_multiplier)

generateHealth = function(c){
  H0 = ceiling(50*(runif(1)+1))*c ; H0
}


#storing damage inflicted by each character 10 times
manman_damage_multiplier = 1.0
ratman_damage_multiplier = 1.8

x <- c(1:10) 
all_prob <- c(dnorm(x, mean=5, sd=3)) 
n = 10 # number of times the damage is inflicted by the character
damageManMan = replicate(n, sample(x, size=1, replace=TRUE, prob=all_prob), simplify=TRUE)
damageManMan = damageManMan * manman_damage_multiplier
damageRatMan = replicate(n, sample(x, size=1, replace=TRUE, prob=all_prob), simplify=TRUE)
damageRatMan = damageRatMan * ratman_damage_multiplier




#generating recovery of both characters

#setup initial variables
x = c(0.01, 0.03, 0.05, 0.07, 0.09, 0.11, 0.12, 0.13, 0.14, 0.15)
weights = c(0.01, 0.02,  0.04, 0.05, 0.08, 0.10, 0.12, 0.15, 0.18, 0.25)

manman_recovery = sample(x, size=1, prob = weights, replace = TRUE)
ratman_recovery = sample(x, size=1, prob = weights, replace = TRUE)






#updating health for both characters for steps 2 to 10 based on damage and recovery

k <- 1
for(n in 2:10){
  healthManMan[n] = as.numeric(healthManMan[n-1] - damageRatMan[n-1]) + manman_recovery
  healthRatMan[n] = as.numeric(healthRatMan[n-1] - damageManMan[n-1]) + ratman_recovery
  k <- k + 1
}



print(healthManMan[10])
print(healthRatMan[10])
