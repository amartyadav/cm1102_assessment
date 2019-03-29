# this initiate the array wit all the health values
H = c(1:20)
# this assign the firt initial value with the function
H[1] = generateHealth()
# the loop adds all the next value with the update function
for(n in 2:20){
  H[n] = updateHealt(H[n-1])
}

#this generates the health value of a player in the start of the game


generateHealth = function(){
  +     H0 = ceiling(50*(runif(1)+1)) ; H0
  + }

# this method generates the health value for each turn of the game


updateHealth = function(Hi){
  Hn = Hi - damage - (0.5 * recovery)
}