
# reading 
forestfirest = read.csv('forestfires.csv')
View(forestfirest)

#replacing empty data with 0
forestfirest$FFMC = str_replace(forestfirest$FFMC,"","0")

# finding indices of na
ind = which(is.na(forestfirest$FFMC))

#replacing empty data with 0
forestfirest$FFMC[ind]=0

#replacing empty data with 0
forestfirest$FFMC[ind]=mean(forestfirest$FFMC)