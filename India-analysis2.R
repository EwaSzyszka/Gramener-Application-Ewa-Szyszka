India <- read.csv("/Users/ewa_anna_szyszka/Desktop/india-districts-census-2011.csv")


plot(India$State.name,India$Agricultural_Workers, xlab="State name", ylab="Number of Agricultural workers")
abline( h = 10000, col = "red")
abline( h = 225551.3, col = "red")
mean(India$Agricultural_Workers)
levels(India$State.name)

#The states with high number of agricultural workers are the ones above the mean

#STATES WITH HIGH NUMBERS OF AGRICULTURE WORKERS
West_Bengal = India[India$State.name =="West Bengal",]
Andhra_Pradesh = India[India$State.name =="Andhra Pradesh",]
Bihar = India[India$State.name =="Bihar",]
Chattisgarh = India[India$State.name =="Chattisgarh",]
Gujrat = India[India$State.name =="Gujrat",]
Madhya_Pradesh = India[India$State.name =="Madhya Pradesh",]
Maharastra = India[India$State.name =="Maharastra",]
Tamilnadu = India[India$State.name =="Tamilnadu",]
UP = India[India$State.name =="UP",]
high_agriculture_states <- rbind(West_Bengal,Andhra_Pradesh, Bihar,Chattisgarh, Gujrat, Madhya_Pradesh, Maharastra, Tamilnadu, UP )

#STATES WITH LOW NUMBERS OF AGRICULTURE WORKERS
Andamans =  India[India$State.name =="Andamans",]
Arunachal_Pradesh = India[India$State.name =="Arunachal Pradesh",]
Chandigarh = India[India$State.name =="Chandigarh",]
Daman = India[India$State.name =="Daman",]
Delhi = India[India$State.name =="Delhi",]
Diu = India[India$State.name =="Diu",]
Himachal_Pradesh = India[India$State.name =="Himachal Pradesh",]
Jammu_and_Kashmir = India[India$State.name =="Jammu and Kashmir",]
Madhya_Pradesh = India[India$State.name =="Madhya Pradesh",]
Maharastra = India[India$State.name =="Maharastra",]
Nagaland = India[India$State.name =="Nagaland",]
Uttarakhand = India[India$State.name =="Uttarakhand",]
low_agriculture_states <- rbind(Andamans, Arunachal_Pradesh, Chandigarh, Daman, Delhi, Diu, Himachal_Pradesh, Jammu_and_Kashmir, Madhya_Pradesh, Maharastra, Nagaland, Uttarakhand)

#CV function 
CV <- function(mean, sd){
  (sd/mean)*100
}


#HIGH AGRICULTURE STATES

mean(West_Bengal$Households_with_Telephone_Mobile_Phone)
sd(West_Bengal$Households_with_Telephone_Mobile_Phone)

mean(Andhra_Pradesh$Households_with_Telephone_Mobile_Phone)
sd(Andhra_Pradesh$Households_with_Telephone_Mobile_Phone)

mean(Bihar$Households_with_Telephone_Mobile_Phone)
sd(Bihar$Households_with_Telephone_Mobile_Phone)

mean(Chattisgarh$Households_with_Telephone_Mobile_Phone)
sd(Chattisgarh$Households_with_Telephone_Mobile_Phone)

mean(Gujrat$Households_with_Telephone_Mobile_Phone)
sd(Gujrat$Households_with_Telephone_Mobile_Phone)

mean(Madhya_Pradesh$Households_with_Telephone_Mobile_Phone)
sd(Madhya_Pradesh$Households_with_Telephone_Mobile_Phone)

mean(Maharastra$Households_with_Telephone_Mobile_Phone)
sd(Maharastra$Households_with_Telephone_Mobile_Phone)

mean(Tamilnadu$Households_with_Telephone_Mobile_Phone)
sd(Tamilnadu$Households_with_Telephone_Mobile_Phone)

mean(UP$Households_with_Telephone_Mobile_Phone)
sd(UP$Households_with_Telephone_Mobile_Phone)



#West Bengal
CV(mean = 519953.2, sd = 343038.4)

#Andhra_Pradesh
CV(mean = 576622.5, sd = 178365.5 )

#Bihar
CV(mean = 276599.2, sd = 149805.6 )

#Chattisgarh
CV(mean = 95903, sd = 95077.08 )

#Gujrat
CV(mean = 323069.2, sd = 271636.8 )

#Madhya_Pradesh
CV(mean =  137733.5, sd = 84309.24 )

#Maharastra
CV(mean =  470250.3, sd = 485134.2 )

#Tamilnadu
CV(mean =  432838.2, sd = 221869 )

#UP
CV(mean =  310375.6, sd = 141538.7)

#Average variability in high agriculture states is 66.16942
(65.97486 + 30.9328 + 54.15981 + 99.1388 + 84.08007 + 61.21186 +  103.1651 + 51.25911 + 45.60239)/9


#LOW AGRICULTURE STATES

mean(Andamans$Households_with_Telephone_Mobile_Phone)
sd(Andamans$Households_with_Telephone_Mobile_Phone)

mean(Arunachal_Pradesh$Households_with_Telephone_Mobile_Phone)
sd(Arunachal_Pradesh$Households_with_Telephone_Mobile_Phone)

mean(Chandigarh$Households_with_Telephone_Mobile_Phone)
sd(Chandigarh$Households_with_Telephone_Mobile_Phone)

mean(Daman$Households_with_Telephone_Mobile_Phone)
sd(Daman$Households_with_Telephone_Mobile_Phone)

mean(Delhi$Households_with_Telephone_Mobile_Phone)
sd(Delhi$Households_with_Telephone_Mobile_Phone)

mean(Diu$Households_with_Telephone_Mobile_Phone)
sd(Diu$Households_with_Telephone_Mobile_Phone)

mean(Himachal_Pradesh$Households_with_Telephone_Mobile_Phone)
sd(Himachal_Pradesh$Households_with_Telephone_Mobile_Phone)

mean(Jammu_and_Kashmir$Households_with_Telephone_Mobile_Phone)
sd(Jammu_and_Kashmir$Households_with_Telephone_Mobile_Phone)

mean(Madhya_Pradesh$Households_with_Telephone_Mobile_Phone)
sd(Madhya_Pradesh$Households_with_Telephone_Mobile_Phone)

mean(Nagaland$Households_with_Telephone_Mobile_Phone)
sd(Nagaland$Households_with_Telephone_Mobile_Phone)

mean(Uttarakhand$Households_with_Telephone_Mobile_Phone)
sd(Uttarakhand$Households_with_Telephone_Mobile_Phone)

#Andamans
CV(mean = 26033.33, sd = 23393.01)

#Arunachal_Pradesh
CV(mean = 7898, sd = 6498.69 )

#Chandigarh
CV(mean = 209783, sd = NA)

#Daman
CV(mean = 43171, sd = NA )

#Delhi
CV(mean = 336863.9, sd = 202913.9 )

#Diu
CV(mean =  9001, sd = NA )

#Himachal_Pradesh
CV(mean =  101252.2, sd = 72859.34 )

#Jammu_and_Kashmir
CV(mean =  63645.77, sd = 52990.81 )

#Madhya_Pradesh
CV(mean =  137733.5, sd = 84309.24)


#Nagaland
CV(mean =  19293.27, sd = 16507.39)

#Uttarakhand
CV(mean =  114584.3, sd = 86095.45)


#Average variability in low agriculture states is 76.18794
(89.85792 + 82.28273 + 60.23617 + 71.95828 + 83.25897 + 61.21186 + 85.56035 + 75.13721)/8








