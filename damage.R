#damage using normal probability, with mean = 5, and sd = 3, i.e. 5 being the highest
#damage that the player can inflict and it gets lower symetrically on either sides. 

x <- c(1:10) # value of x(value of damage that we need to calculate the normal probability on)

all_prob <- c(dnorm(x, mean=5, sd=3)) # storing the normal probabilities calculated on the x vector in the vector called 'all_prob'

n = 100 # number of times the damage is inflicted by the character

results = c(replicate(n, sample(x, size=1, replace=TRUE, prob=all_prob), simplify=FALSE))
# replicating(running the sample() function n number of times) and storing the results of each time in a vector called 'results'.
# the sample function takes the vector x as input to choose from each time based on the probability weights in the prob argument which takes in the all_prob vector as input.
# the vectors x and all_prob in sample() are of the same size with each element in x having the corresponding probability(weight) in the all_prob vector. It corresponds on the basis of indices.

# plotting the results vector gave expected results with the plot being the most dense between 4 and 6 since the mean was 5, and getting less denser as you look at the proximities. 
