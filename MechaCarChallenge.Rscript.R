library(dplyr) #3
MechaCar <- read.csv(file ="MechaCar_mpg.csv",check.names = F, stringsAsFactors = F) #4
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = MechaCar) #5
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = MechaCar)) #6

Suspension_coil<-read.csv(file = 'Suspension_coil.csv',check.names = F,stringsAsFactors = F)
total_summary <- Suspension_coil %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups = 'keep')
lot_summary <- Suspension_coil%>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups= 'keep')

t.test(Suspension_coil$PSI,mu=1500)
t.test(subset(Suspension_coil,Manufacturing_Lot=="Lot1")$PSI,mu=1500)
t.test(subset(Suspension_coil,Manufacturing_Lot=="Lot2")$PSI,mu=1500)
t.test(subset(Suspension_coil,Manufacturing_Lot=="Lot3")$PSI,mu=1500)
