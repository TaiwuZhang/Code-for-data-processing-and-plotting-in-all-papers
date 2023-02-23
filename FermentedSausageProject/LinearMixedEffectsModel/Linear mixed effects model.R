#R (4.1.1)
#lmerTest (3.1-3)

library(lmerTest)

setwd("#location of demo data")
df <- read.csv("#name of demo data")

lme <- lmer(data=df,
            formula=DV~group*time*batch+(1|sample)+(1|batch),
            control=lmerControl(optCtrl=list(maxfun=20000), optimizer='bobyqa'))
isSingular(lme)
summary(lme)