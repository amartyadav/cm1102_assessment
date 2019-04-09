#HEALTH FOR EACH CHARACTERS
manman_health_multiplier = 1.0
turtleboy_health_multiplier = 1.5
ratman_health_multiplier = 0.3

#DAMAGE FOR EACH CHARACTERS
manman_damage_multiplier = 1.0
turtleboy_damage_multiplier = 0.6
ratman_damage_multiplier = 1.8

print("Select character class:")
print("1 - ManMan")
print("2 - TurtleBoy")
print("3 - RatMan")
playerOne <- readline(prompt="Player 1: ");

n = strtoi(playerOne);

playerOneHealthMultiplier = switch(n,manman_health_multiplier,turtleboy_health_multiplier,ratman_health_multiplier);
playerOneDamageMultiplier = switch(n,manman_damage_multiplier,turtleboy_damage_multiplier,ratman_damage_multiplier);

playerTwo <- readline(prompt="Player 2: ");

n = strtoi(playerTwo);

playerTwoHealthMultiplier = switch(n,manman_health_multiplier,turtleboy_health_multiplier,ratman_health_multiplier);
playerTwoDamageMultiplier = switch(n,manman_damage_multiplier,turtleboy_damage_multiplier,ratman_damage_multiplier);



#health and damage vector for storing health value and damage value for 10 steps
healthPlayerOne <- c(1:10)
damagePlayerOne <- c(1:10)
healthPlayerTwo <- c(1:10)
damagePlayerTwo <- c(1:10)



#playerOne initial health
healthPlayerOne[1]= generateHealth(playerOneHealthMultiplier)

generateHealth = function(c){
  H0 = ceiling(50*(runif(1)+1))*c ; H0
}

#ratman initial health
healthPlayerTwo[1] = generateHealth(playerTwoHealthMultiplier)

generateHealth = function(c){
  H0 = ceiling(50*(runif(1)+1))*c ; H0
}


#storing damage inflicted by each character 10 times
x <- c(1:10) 
all_prob <- c(dnorm(x, mean=5, sd=3)) 
n = 10 # number of times the damage is inflicted by the character
damagePlayerOne = replicate(n, sample(x, size=1, replace=TRUE, prob=all_prob), simplify=TRUE)
damagePlayerOne = damagePlayerOne * playerOneDamageMultiplier
damagePlayerTwo = replicate(n, sample(x, size=1, replace=TRUE, prob=all_prob), simplify=TRUE)
damagePlayerTwo = damagePlayerTwo * playerTwoDamageMultiplier



#generating recovery of both characters

#setup initial variables
x = c(0.01, 0.03, 0.05, 0.07, 0.09, 0.11, 0.12, 0.13, 0.14, 0.15)
weights = c(0.01, 0.02,  0.04, 0.05, 0.08, 0.10, 0.12, 0.15, 0.18, 0.25)

playerOne_recovery = sample(x, size=1, prob = weights, replace = TRUE)
playerTwo_recovery = sample(x, size=1, prob = weights, replace = TRUE)




#updating health for both characters for steps 2 to 100 based on damage and recovery

k <- 1
for(n in 2:10){
  healthPlayerOne[n] = as.numeric(healthPlayerOne[n-1] - damagePlayerOne[n-1]) + playerOne_recovery
  healthPlayerTwo[n] = as.numeric(healthPlayerTwo[n-1] - damagePlayerTwo[n-1]) + playerTwo_recovery
  k <- k + 1
}



print(healthPlayerOne[10])
print(healthPlayerTwo[10])

plot(NULL, xlim=c(1,10), ylim=c(0,150), ylab="Health", xlab="time")

lines(c(1:10), healthPlayerOne, type='l', col='red')
lines(c(1:10), healthPlayerTwo, type='l', col='blue')

