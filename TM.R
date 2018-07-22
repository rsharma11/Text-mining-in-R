library("twitteR")
library(ROAuth)
library(RCurl)
key = "IuTkuJDrseipQ7yJByWRNcwaQ"
secret = "DspkZPEEmrvvRL0rjpLDMIbcrlq3aFUMV11UaqUuDeJI6CQMYV"
setwd("/Users/vimal/RCoding/Text-mining-in-R/")
url <- "http://www.rdatamining.com/data/RDataMining-Tweets-20160212.rds"
download.file(url, destfile = "/Users/vimal/RCoding/Text-mining-in-R/RDataMining-Tweets-20160212.rds")
tweets <- readRDS("/Users/vimal/RCoding/Text-mining-in-R/RDataMining-Tweets-20160212.rds")
tweets.df <- twListToDF(tweets)
tweets.df[190,c("id", "created", "screenName", "replyToSN", "favoriteCount", "retweetCount", "longitude", "latitude", "text")]