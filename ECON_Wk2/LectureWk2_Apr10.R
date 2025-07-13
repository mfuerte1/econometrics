df<-data.frame(matrix(c(1,4,0,
                        2,5,0,
                        3,8,1,
                        4,4,0,
                        5,0,0,
                        6,5,0,
                        7,10,1,
                        8,9,0,
                        9,4,1,
                        10,11,1),nrow=10,ncol=3, byrow=TRUE
                      ))

colnames(df)<-c("idf","c","d")

mean(df$c)
mean(df$d)
sd(df$c)
sd(df$d)
sd_g<-sd(df$g)
print(sd_g)
cov(df$c,df$d)
cor(df$c,df$d)

View(df)

pnorm((70-93)/20)

#######################
# We randomly sample a few employee working from a large software
# company in the Bay area. We find the following info about their monthly
# wages (in USD)


WomenMean<-5900
WomenSD <- 450
WomenN <- 100

MenMean <- 6500
MenSD <- 220
MenN <- 89

# Hypothesis Test NUll        Δ: Ww - Wm = 0
# Hypothesis Test Alternative Δ: Ww - Wm = 0


SE<-sqrt(WomenSD^2/WomenN + MenSD^2/MenN)
Delta <- (WomenMean - MenMean)
t<- Delta/SE
print(t)
p<-1.96

confidence_level_lower <- Delta-p*SE
confidence_level_upper <- Delta+p*SE













