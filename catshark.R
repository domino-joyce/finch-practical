catshark<-read.csv("catshark.csv")
str(catshark)
#this shows there are 21 observations and two variables in the data

#make a boxlot to compare mean size for offshore vs inshore fish
boxplot(catshark$Scyliorhinus_canicula_size_cm~catshark$Site, col=terrain.colors(4),
        xlab = "catch location",
        ylab = "size (cm)")

tapply(catshark$Scyliorhinus_canicula_size_cm, catshark$Site, FUN=mean)
tapply(catshark$Scyliorhinus_canicula_size_cm, catshark$Site, FUN=var)
tapply(catshark$Scyliorhinus_canicula_size_cm, catshark$Site, FUN=sum)

#is there a significant difference between means?
t.test(catshark$Scyliorhinus_canicula_size_cm~catshark$Site)


#what is the mean catshark size?
mean(catshark$Scyliorhinus_canicula_size_cm)






