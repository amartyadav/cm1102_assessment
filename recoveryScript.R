#setup initial variables

x = c(0.01, 0.03, 0.05, 0.07, 0.09, 0.11, 0.12, 0.13, 0.14, 0.15)
weights = c(0.01, 0.02,  0.04, 0.05, 0.08, 0.10, 0.12, 0.15, 0.18, 0.25)

#run sample to generate a hundred values using this model

rec_results = sample(x, 100, prob = weights, replace = TRUE)

#display results

print(rec_results)
plot(rec_results, c(1:100))
