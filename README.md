#Data_Science-India-analysis


########################### Question 1 - Python ########################### 

Task: Find common elements

      L1 = ['a', 'b', 'c']
      L2 = ['b', 'd']
      set(L1) & set(L2)

Sets give all elements that are in the list without repetition
Next using the logical & operator I set a condition that returns the intersecting elements 
that are in L1 and L2

------------------------Test---------------------------

Task: I test on another list if my code works correctly

     L3 = ['a','a','b']
     L4 = ['a']
     set(L3) & set(L4)

Result: {'a'}

########################### Question 2 - Python ########################### 

Task: Calculating the number of Thursdays between 1990 and 2000  

First, I calculate the number of days between 1st January 1990 and December 31st 2000

     from datetime import date
     start_range = datetime.date(1990, 1, 1)
     end_range = datetime.date(2000, 12, 31)
     days_between = end_range - start_range
     print ("Number of days between 1990 and 2000 is ", days_between.days)

Result: ('Number of days between 1990 and 2000 is ', 4017)

1990 January 1st is on Monday, so the first Thursday is on the 4th January. 
Starting January 4th, when there is the first Thursday of the year I will calculate how many times 
an interval of 7 will be able to fit in, the result is equal to number of Thursdays between 1990 and 2000.

     Thursdays =(days_between.days - 3)/7
     print ("Numbr of Thursdays between 1990 and 2000 is equal to ", Thursdays)

------------------------Test---------------------------

Task: For test I will see whether the number that I arrived at falls in the range of minimal possible number of 
Thursdays and maximum number of Thursdays possible 

Ususally every year has between 52 to 53 Thursdays, so between January 1st 1990 and December 31st 2000 there are 
11 years, so minimal hypothetical number will be 11 * 52 and maximal number 53 * 11

     Minimal_number_of_Thursdays = 11*52
     Maximal_number_of_Thursdays = 11*53
     print("Minimal hypothetical number of Thursdays is equal to ", Minimal_number_of_Thursdays)
     print("Maximal hypothetical number of Thursdays is equal to ", Maximal_number_of_Thursdays)

Result: The number that I arrived at in my estimation was 573, which falls between the range above, thus I 
assume that I arrived at a correct solution

###########################  Question 1 - India Census ########################### 

I created the map using Tableau Public. The map represents states with low literacy, for the low literacy criterium I decided to map the total levels of education across India and color-code in light blue the states that have lowest total education metric levels.

###########################  Question 2 - India Census - R ########################### 

Task: Find out most similar districts in Bihar and Tamil Nadu.

I chosen to solve it using R programming language and the Euclidean distance method to measure which 
districts in Bihar and Tamil Nadu are closest to each other with respect to levels of literacy

Extracting the data and selecting the Literacy columns (BL and TL)

     Bihar <- India_edited[ which(India_edited$`State name`=='Bihar'), ]
     Tamilnadu <- India_edited[which(India_edited$`State name`=='Tamilnadu'), ]
   
     BL <- Bihar$Literate 
     TL <- Tamilnadu$Literate
     
For the sake of simplicity and requirement of the R distances() function that calculates Euclidean distances for two same length matrces, lists or vectors I will make the two data sets equal length. Thus From the BL 3 largest and 3 smallest values (the extrema) will be substracted.

Result: Those are the values that the Literacy column for Bihar have after data adjustment

> BL
 [1] 1759481 2276957 1436794 2155338 1033283 1195768  745056 1332326 1280190  834577  804996 1816634 1382998
[14] 1930175 2157454 1926740 2142880 1548673  768028 1573066  965321  801817  507270 1519933 1599151  989807
[27]  920276 1799832 1466002 2297613  858588  618881

Those are the vaues that the Literacy column for Tamilnadu takes 

> TL
 [1] 2791721 3776276 3013382 2773928 1626813 2195776 2285562 1176131 1492662  569647 1481834  727044 2038981
[14]  375823  480604 1815281 1213008  946471 1790998 1110545  959744 2273430  870080 1398788  978946 1349697
[27] 2273457 1548738  917709 1187958 2635907 1760566

Next, test the two datasets for similarities using Euclidean distances

     my_data_points <- data.frame(x = c(BL),y = c(TL))
     my_distances1 <- distances(my_data_points)
     my_distances1

Results: Below, I attached fragment of the my_distances1 variable that contains Euclidean distances

> my_distances1
           1       2         3         4         5         6         7         8         9        10        11
1        0.0 1112263  391485.0  396256.7 1372725.1  820318.7 1133690.9 1671105.2 1384656.7 2406877.7 1620754.6
2  1112263.4       0 1134848.5 1009699.3 2483327.6 1914928.2 2137510.0 2766420.4 2491673.6 3516095.8 2726010.5
3   391485.0 1134849       0.0  757392.7 1444089.6  852392.6 1004103.3 1840218.7 1528762.3 2516844.5 1656746.2
4   396256.7 1009699  757392.7       0.0 1604643.3 1120283.1 1492446.5 1797304.7 1551620.6 2569681.8 1868938.3
5  1372725.1 2483328 1444089.6 1604643.3       0.0  591709.6  719044.5  540870.6  280997.4 1075678.4  270432.7
6   820318.7 1914928  852392.6 1120283.1  591709.6       0.0  459568.1 1028748.8  708164.1 1665759.4  813889.4
7  1133690.9 2137510 1004103.3 1492446.5  719044.5  459568.1       0.0 1255278.1  956587.1 1718248.6  805960.0
8  1671105.2 2766420 1840218.7 1797304.7  540870.6 1028748.8 1255278.1       0.0  320795.9  784587.1  609533.6
9  1384656.7 2491674 1528762.3 1551620.6  280997.4  708164.1  956587.1  320795.9       0.0 1024952.5  475317.4
10 2406877.7 3516096 2516844.5 2569681.8 1075678.4 1665759.4 1718248.6  784587.1 1024952.5       0.0  912666.5
11 1620754.6 2726011 1656746.2 1868938.3  270432.7  813889.4  805960.0  609533.6  475317.4  912666.5       0.0
12 2065467.9 3083782 2317675.5 2074717.9 1192989.1 1594568.4 1891364.0  660479.7  934849.2  994590.3 1262188.3
13  841639.4 1953806  975884.9 1066140.8  540539.6  244212.5  683938.7  864336.6  555908.2 1568345.6  802807.0
14 2421920.6 3418090 2683308.1 2408652.3 1539282.7 1962544.9 2247578.7  998957.6 1292211.2 1112610.8 1577747.8
15 2345132.0 3297838 2633308.8 2293325.0 1605476.7 1966381.2 2291886.0 1079163.6 1339348.2 1325870.4 1682737.1
16  990661.7 1992022 1294408.4  985525.8  913118.6  824073.1 1271826.0  872834.9  722571.7 1656630.3 1170254.9
17 1624601.3 2566772 1933883.1 1560969.7 1184246.6 1364864.1 1761897.8  811392.4  906885.0 1457933.5 1364624.9
18 1857252.7 2922019 2069936.7 1925523.7  853517.5 1298192.9 1561718.6  315515.0  608611.3  807421.5  916334.6
19 1408696.4 2493631 1393366.6 1700229.5  311956.6  588903.0  495097.2  834562.0  592717.7 1223162.7  311366.4
20 1691479.6 2757097 1907710.3 1762351.7  746925.9 1148947.4 1437451.0  249514.1  481445.5  915388.8  853104.4



Results: 1085 this is the minimal eycledean difference, which corresponds for the Literacy 
levels in districts Pashchim Champaran(Bihar) and Tiruppur(Tamilnadu).


------------------------Bonus---------------------------
I thought that it will be interesting to look at the simple difference in mean Literacy rate in all Bihar and Tamilnadu
districts and compare it with the difference after performing a multivariate matching that will match the two datasets
based on chosen covariates (here, I have chosen Population, Literacy levels and number of Non_workers / unemployed people)
and the result will correspond to the treatment effect (treatment effect in this case oillustrates the difference in two states, treatment observations = Bihar, control observations = Tamilnadu)

Simple difference (Result: -238223.3)

      mean(Bihar$Literate) - mean(Tamilnadu$Literate)

Multivariate matching that matches on three covariates

     X = cbind(India_edited$Population,  India_edited$Literate, India_edited$Non_Workers)
     mout <- Match(Tr=TT, X=X, estimand="ATT")
     mout$index.treated
     mout$index.control
     
 Results: The values below are the the indices of the matches
> mout$index.treated
 [1]  1  2  3  4  5  6  7  8  9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36
[37] 37 38
> mout$index.control
 [1] 44 42 52 44 42 68 43 67 54 54 68 68 44 42 57 44 42 44 42 54 67 54 68 67 50 52 54 40 54 68 58 51 57 42 68 67
[37] 50 53

Actualdatatreat and actualdatacontrol converts indicies to data that coresponds to the indicies

     actualdatatreat <- India_edited[mout$index.treated,]
     actualdatacontrol <- India_edited[mout$index.control,]
     mean(actualdatatreat$Literate) - mean(actualdatacontrol$Literate) #difference after matching
     
Results: The difference after matching is equal to -306029.3, meaning that treatment effect, treatment being assigned to Bihar state is equal to -306029.3

###########################  Question 3 - India Census - R ########################### 

Task: How does the mobile penetration vary in regions (districts or states) with high or low agricultural workers?

I first created a visualization (attached to the submission email) to identify states with high agricultural workers.
By high levels, I defined those that have above the mean (mean is illustrated on the graph by the red line) levels of 
agricultural workers. The states with high levels were: West Bengal, Andhra Pradesh, Bihar, Chattisgarh, Gujrat, Madhya Pradesh, Maharastra, Tamilnadu, UP

This is the code that produces the visualization

    plot(India$State.name,India$Agricultural_Workers, xlab="State name", ylab="Number of Agricultural workers")
    mean(India$Agricultural_Workers)
    abline( h = 225551.3, col = "red")

Next, I binded all the high Agriculture states into a single list

    West_Bengal = India[India$State.name =="West Bengal",]
    Andhra_Pradesh = India[India$State.name =="Andhra Pradesh",]
    Bihar = India[India$State.name =="Bihar",]
    Chattisgarh = India[India$State.name =="Chattisgarh",]
    Gujrat = India[India$State.name =="Gujrat",]
    Madhya_Pradesh = India[India$State.name =="Madhya Pradesh",]
    Maharastra = India[India$State.name =="Maharastra",]
    Tamilnadu = India[India$State.name =="Tamilnadu",]
    UP = India[India$State.name =="UP",]
    high_agriculture_states <- rbind(West_Bengal,Andhra_Pradesh, Bihar,Chattisgarh, Gujrat, Madhya_Pradesh, Maharastra,    Tamilnadu, UP )
    
To measure how mobile penetration vary in regions with high agriculture, I will use the coefficient of variation (CV) to measure the relative variability. To compute I would need to have the sd and mean values for number of households in each
state with access to mobile.

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


Next, I create the coefficient of variation (CV) function and compute the value for each state

    CV <- function(mean, sd){
      (sd/mean)*100
    }

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


Highest variability is in Maharastra = 103.1651
Lowest variability is in Andhra_Pradesh = 30.9328
Average variability in high agriculture states is 66.16942


Next, I Created another visualization for the low agriculture states and chosen 10000 as a threshold for determining which states have low agriculture worker levels 

    plot(India$State.name,India$Agricultural_Workers, xlab="State name", ylab="Number of Agricultural workers")
    mean(India$Agricultural_Workers)
    abline( h = 10000, col = "red")

I binded all the high Agriculture states into a single list 

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
    
I calculated the means and standard deviations necessary for the CV computation

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
    
 Next I compute the value of CV for low agriculture states
 
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
     
The NA values for standard deviation were obtained in states that had only one data sample, thus I omited them in my variability calculation, as there was not a sufficient amount of data for Chandigarh, Daman and Diu states.
     
Highest variability is in Andamans = 89.85792
Lowest variability is in Delhi =  60.23617
Average variability in high agriculture states is 76.18794

Results: The average variability in lower agricultural level states in higher than in high agriculture states
