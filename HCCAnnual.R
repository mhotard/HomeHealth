#Data Challenge
#Analysis of Home Health Care Data
#Downloaded from https://data.medicare.gov/data/archives/home-health-compare

#HHC Analysis
#longitudinal

library(dplyr)
library(reshape2)

#create year variable
years <- seq(2003, 2015, 1)

file_number <- length(years)

#files after 2010 have odd characters in their heading
#FIX: read in without headings and then create them
#questions change over time so each year is created with different variable names
#many questions stay the same
for (i in 1:file_number){
  assign(paste("data",years[i],sep=""), read.csv(paste("Provider",years[i],".csv",sep=""),header=FALSE))
  print(paste("data",years[i],sep=""))
  print(paste("Provider",years[i],".csv",sep=""))
}

#the questions change multiple times over the years
#for each year of the data, the following code creates the variable names
#for common questions, the variable names remain the same across years

data2003[1,]
names2003 <- c('ProviderNum',
               'ProviderName',
               'Address',
               'City',
               'State',
               'Zip',
               'Telephone',
               'Ownership',
               'DateCert',
               'NursingCare',
               'PhysTher',
               'OccTher',
               'Speech',
               'SocialServ',
               'HomeHealthAide',
               'Walking',
               'Bed',
               'Bladder',
               'Pain',
               'Bathing',
               'Medicine',
               'Dressed',
               'SameBathing',
               'Hospital',
               'Urgent',
               'ConfusedLess')
#length(names2003)
colnames(data2003) <- names2003
#names(data2003)
data2003 <- data2003[-1,]
#data2003[1:10,]
data2003$Year <- 2003

#data2004[1,]
names2004 <- c('ProviderNum',
               'ProviderName',
               'Address',
               'City',
               'State',
               'Zip',
               'Telephone',
               'Ownership',
               'DateCert',
               'NursingCare',
               'PhysTher',
               'OccTher',
               'Speech',
               'SocialServ',
               'HomeHealthAide',
               'Walking',
               'Bed',
               'Bladder',
               'Pain',
               'Bathing',
               'Medicine',
               'Dressed',
               'SameBathing',
               'Hospital',
               'Urgent',
               'ConfusedLess')
#length(names2004)
colnames(data2004) <- names2004
#names(data2004)
data2004 <- data2004[-1,]
#data2004[1:10,]
data2004$Year <- 2004

#2005 changes
#variables change. Add short of breath and stay home. Take out less confused and same bathing
data2005[1,]
names2005 <- c('ProviderNum',
               'ProviderName',
               'Address',
               'City',
               'State',
               'Zip',
               'Telephone',
               'Ownership',
               'DateCert',
               'NursingCare',
               'PhysTher',
               'OccTher',
               'Speech',
               'SocialServ',
               'HomeHealthAide',
               'Walking',
               'Bed',
               'Bladder',
               'Pain',
               'Bathing',
               'Medicine',
               'ShortBreath',
               'Hospital',
               'Urgent',
               'StayHome')
length(names2005)
colnames(data2005) <- names2005
names(data2005)
data2005 <- data2005[-1,]
data2005[1:10,]
data2005$Year <- 2005

data2006[1,]
names2006 <- c('ProviderNum',
               'ProviderName',
               'Address',
               'City',
               'State',
               'Zip',
               'Telephone',
               'Ownership',
               'DateCert',
               'NursingCare',
               'PhysTher',
               'OccTher',
               'Speech',
               'SocialServ',
               'HomeHealthAide',
               'Walking',
               'Bed',
               'Bladder',
               'Pain',
               'Bathing',
               'Medicine',
               'ShortBreath',
               'Hospital',
               'Urgent',
               'StayHome')
length(names2006)
colnames(data2006) <- names2006
names(data2006)
data2006 <- data2006[-1,]
data2006[1:10,]
data2006$Year <- 2006

#2007 variables changes
#add Unplanned wound, wound improve
#renaming the data columns, varies slightly by year
data2007[1,]
names2007 <- c('ProviderNum',
           'ProviderName',
           'Address',
           'City',
           'State',
           'Zip',
           'Telephone',
           'Ownership',
           'DateCert',
           'NursingCare',
           'PhysTher',
           'OccTher',
           'Speech',
           'SocialServ',
           'HomeHealthAide',
           'Walking',
           'Bed',
           'Bladder',
           'Pain',
           'Bathing',
           'Medicine',
           'ShortBreath',
           'Hospital',
           'Urgent',
           'StayHome',
           'UnplannedWound',
           'WoundImprove')
colnames(data2007) <- names2007
names(data2007)
data2007 <- data2007[-1,]
data2007[1:10,]
data2007$Year = 2007

data2008[1,]
names2008 <- c('ProviderNum',
               'ProviderName',
               'Address',
               'City',
               'State',
               'Zip',
               'Telephone',
               'Ownership',
               'DateCert',
               'NursingCare',
               'PhysTher',
               'OccTher',
               'Speech',
               'SocialServ',
               'HomeHealthAide',
               'Walking',
               'Bed',
               'Bladder',
               'Pain',
               'Bathing',
               'Medicine',
               'ShortBreath',
               'Hospital',
               'Urgent',
               'StayHome',
               'UnplannedWound',
               'WoundImprove')
colnames(data2008) <- names2008
names(data2008)
data2008 <- data2008[-1,]
data2008[1:10,]
data2008$Year = 2008

data2009[1,]
names2009 <- c('ProviderNum',
               'ProviderName',
               'Address',
               'City',
               'State',
               'Zip',
               'Telephone',
               'Ownership',
               'DateCert',
               'NursingCare',
               'PhysTher',
               'OccTher',
               'Speech',
               'SocialServ',
               'HomeHealthAide',
               'Walking',
               'Bed',
               'Bladder',
               'Pain',
               'Bathing',
               'Medicine',
               'ShortBreath',
               'Hospital',
               'Urgent',
               'StayHome',
               'UnplannedWound',
               'WoundImprove')
colnames(data2009) <- names2009
names(data2009)
data2009 <- data2009[-1,]
data2009[1:10,]
data2009$Year <- 2009

#Data 2010
#many changes to the survey question
#questions changed order as well
data2010[1,]
names2010 <- c('ProviderNum',
               'ProviderName',
               'Address',
               'City',
               'State',
               'Zip',
               'Telephone',
               'Ownership',
               'DateCert',
               'NursingCare',
               'PhysTher',
               'OccTher',
               'Speech',
               'SocialServ',
               'HomeHealthAide',
               'TimelyCare',
               'TeachDrugs',
               'CheckFalling',
               'CheckDepress',
               'CheckFlu',
               'CheckPneum',
               'DiabetesFoot',
               'CheckPain',
               'TreatPain',
               'TreatHeart',
               'PreventSoresDoctor',
               'PreventSoresPlan',
               'CheckSores',
               'Walking',
               'Bed',
               'Bathing',
               'Pain',
               'BreathingImprove',
               'WoundImprove',
               'MoreBedSores',
               'Medicine',
               'UrgentNoHospital',
               'Hospital')
length(names2010)
dim(data2010)
colnames(data2010) <- names2010
names(data2010)
data2010 <- data2010[-1,]
data2010[1:10,]
data2010$Year <- 2010

data2011[1,]
names2011 <- c('ProviderNum',
               'ProviderName',
               'Address',
               'City',
               'State',
               'Zip',
               'Telephone',
               'Ownership',
               'DateCert',
               'NursingCare',
               'PhysTher',
               'OccTher',
               'Speech',
               'SocialServ',
               'HomeHealthAide',
               'TimelyCare',
               'TeachDrugs',
               'CheckFalling',
               'CheckDepress',
               'CheckFlu',
               'CheckPneum',
               'DiabetesFoot',
               'CheckPain',
               'TreatPain',
               'TreatHeart',
               'PreventSoresDoctor',
               'PreventSoresPlan',
               'CheckSores',
               'Walking',
               'Bed',
               'Bathing',
               'Pain',
               'BreathingImprove',
               'WoundImprove',
               'MoreBedSores',
               'Medicine',
               'UrgentNoHospital',
               'Hospital')
length(names2011)
dim(data2011)
colnames(data2011) <- names2011
names(data2011)
data2011 <- data2011[-1,]
data2011[1:10,]
data2011$Year = 2011

#data2012
#got rid  of more bed sores question
data2012[1,]
names2012 <- c('ProviderNum',
               'ProviderName',
               'Address',
               'City',
               'State',
               'Zip',
               'Telephone',
               'Ownership',
               'DateCert',
               'NursingCare',
               'PhysTher',
               'OccTher',
               'Speech',
               'SocialServ',
               'HomeHealthAide',
               'TimelyCare',
               'TeachDrugs',
               'CheckFalling',
               'CheckDepress',
               'CheckFlu',
               'CheckPneum',
               'DiabetesFoot',
               'CheckPain',
               'TreatPain',
               'TreatHeart',
               'PreventSoresDoctor',
               'PreventSoresPlan',
               'CheckSores',
               'Walking',
               'Bed',
               'Bathing',
               'Pain',
               'BreathingImprove',
               'WoundImprove',
               'Medicine',
               'UrgentNoHospital',
               'Hospital')
length(names2012)
names2012
dim(data2012)
colnames(data2012) <- names2012
names(data2012)
data2012 <- data2012[-1,]
data2012[1:10,]
data2012$Year = 2012

data2013[1,]
names2013 <- c('ProviderNum',
               'ProviderName',
               'Address',
               'City',
               'State',
               'Zip',
               'Telephone',
               'Ownership',
               'DateCert',
               'NursingCare',
               'PhysTher',
               'OccTher',
               'Speech',
               'SocialServ',
               'HomeHealthAide',
               'TimelyCare',
               'TeachDrugs',
               'CheckFalling',
               'CheckDepress',
               'CheckFlu',
               'CheckPneum',
               'DiabetesFoot',
               'CheckPain',
               'TreatPain',
               'TreatHeart',
               'PreventSoresDoctor',
               'PreventSoresPlan',
               'CheckSores',
               'Walking',
               'Bed',
               'Bathing',
               'Pain',
               'BreathingImprove',
               'WoundImprove',
               'Medicine',
               'UrgentNoHospital',
               'Hospital')
length(names2013)
dim(data2013)
colnames(data2013) <- names2013
names(data2013)
data2013 <- data2013[-1,]
data2013[1:10,]
data2013$Year <- 2013

#data2014
#the dataset added footnotes which have to be removed
data2014[1,]
footnotes2014 <- c(17,19,21,23,25,27,29,31,33,35,37,39,41,43,45,47,49,51,53,55,57,59,60)
data2014 <- data2014[,-footnotes2014]
dim(data2014)
names2014 <-   c('ProviderNum',
               'ProviderName',
               'Address',
               'City',
               'State',
               'Zip',
               'Telephone',
               'Ownership',
               'DateCert',
               'NursingCare',
               'PhysTher',
               'OccTher',
               'Speech',
               'SocialServ',
               'HomeHealthAide',
               'TimelyCare',
               'TeachDrugs',
               'CheckFalling',
               'CheckDepress',
               'CheckFlu',
               'CheckPneum',
               'DiabetesFoot',
               'CheckPain',
               'TreatPain',
               'TreatHeart',
               'PreventSoresDoctor',
               'PreventSoresPlan',
               'CheckSores',
               'Walking',
               'Bed',
               'Bathing',
               'Pain',
               'BreathingImprove',
               'WoundImprove',
               'Medicine',
               'UrgentNoHospital',
               'Hospital')
length(names2014)
dim(data2014)
colnames(data2014) <- names2014
names(data2014)
data2014 <- data2014[-1,]
data2014[1:10,]
data2014$Year <- 2014

#data2015
#kept footnotes
#added star rating, more hospital questions
data2015[1,]
footnotes2015 <- c(17,19,21,23,25,27,29,31,33,35,37,39,41,43,45,47,49,51,53,55,57,59,61,63,65,66)
data2015 <- data2015[,-footnotes2015]
dim(data2015)
names2015 <-   c('ProviderNum',
                 'ProviderName',
                 'Address',
                 'City',
                 'State',
                 'Zip',
                 'Telephone',
                 'Ownership',
                 'DateCert',
                 'NursingCare',
                 'PhysTher',
                 'OccTher',
                 'Speech',
                 'SocialServ',
                 'HomeHealthAide',
                 'StarRating',
                 'TimelyCare',
                 'TeachDrugs',
                 'CheckFalling',
                 'CheckDepress',
                 'CheckFlu',
                 'CheckPneum',
                 'DiabetesFoot',
                 'CheckPain',
                 'TreatPain',
                 'TreatHeart',
                 'PreventSoresDoctor',
                 'PreventSoresPlan',
                 'CheckSores',
                 'Walking',
                 'Bed',
                 'Bathing',
                 'Pain',
                 'BreathingImprove',
                 'WoundImprove',
                 'Medicine',
                 'UrgentNoHospital',
                 'Hospital',
                 'Readmitted',
                 'NoReadmitted')
length(names2015)
dim(data2015)
colnames(data2015) <- names2015
names(data2015)
data2015 <- data2015[-1,]
data2015[1:10,]
data2015$Year <- 2015

#combine all the years into one dataset
data_all <- rbind_all(list(data2003, data2004, data2005, data2006,data2007, data2008, data2009, data2010,data2011,data2012,data2013,data2014,data2015))

#the combined dataset has many values for NA
#NAs have to be cleaned up to do analysis
#For now, create multiple clean dataset for variables of interest
#throwing out all the NAs would throw out some useful data for some variables

#function to clean the dataset for a particular variable of interest
#earlier years code NA values as 199 or 201, so those also have to be removed
clean_data <- function(df,column){
  #convert variable of interest to numeric from factor
  df[,column] <- as.numeric(df[,column])
  #filter out NAs and greater than 100
  flag <- !is.na(df[,column]) & df[,column] < 101
  #return a cleaned data set
  return(df[flag,])
}

#creating clean datasets for some primary variables of interest
data_pain <- clean_data(data_all,"Pain")
data_bed <- clean_data(data_all, "Bed")
data_walking <- clean_data(data_all, "Walking")
data_bladder <- clean_data(data_all, "Bladder")
data_medicine <- clean_data(data_all, "Medicine")
data_hospital <- clean_data(data_all, "Hospital")

#using data-table to view mean and SD over time for indicators
#key question - how are these changing over time
data_pain <- data.table(data_pain)
data_pain[,list(mean_pain=mean(Pain), sd_pain=sd(Pain)), by=Year]

data_bed <- data.table(data_bed)
data_bed[,list(mean_bed=mean(Bed), sd_bed=sd(Bed), count=length(Bed)), by=Year]

data_walking <- data.table(data_walking)
data_walking[,list(mean_walking=mean(Walking), sd_walking=sd(Walking), count=length(Walking)), by=Year]

data_bladder <- data.table(data_bladder)
data_bladder[,list(mean_bladder=mean(Bladder), sd_bladder=sd(Bladder)), by=Year]

data_medicine <- data.table(data_medicine)
data_medicine[,list(mean_medicine=mean(Medicine), sd_medicine=sd(Medicine)), by=Year]

data_medicine <- data.table(data_medicine)
data_medicine[,list(mean_medicine=mean(Medicine), sd_medicine=sd(Medicine)), by=Year]

data_medicine <- data.table(data_medicine)
data_medicine[,list(mean_medicine=mean(Medicine), sd_medicine=sd(Medicine)), by=Year]

data_hospital <- data.table(data_hospital)
data_hospital[,list(mean_hospital=mean(Hospital), sd_hospital=sd(Hospital),count=length(Hospital)), by=Year]

#creating new datasets that will help create a graph of the indicators over time

pain <- data_pain[,list(mean_pain=mean(Pain)), by=Year]

bed <- data_bed[,list(mean_bed=mean(Bed)), by=Year]

walking <- data_walking[,list(mean_walking=mean(Walking)), by=Year]

bladder <- data_bladder[,list(mean_bladder=mean(Bladder)), by=Year]

medicine <- data_medicine[,list(mean_medicine=mean(Medicine)), by=Year]

hospital <- data_hospital[,list(mean_hospital=mean(Hospital)), by=Year]

#merging the means of the indicators to graph it
to_graph <- Reduce(function(x, y) merge(x, y, by="Year", all=TRUE), list(pain, walking, medicine, hospital))
to_graph

#melting it for ggplot
to_graph <- melt.data.table(to_graph, id="Year")

#graph of the selected indicators
#most are improving over time
#sharp decrease in admitted to hospital near the end
ggplot(data=to_graph, aes(x=Year, y=value)) + geom_line(aes(color=variable), size=1.25) +
   scale_y_continuous("National average over all providers (%)") + labs(title = "Home Health Care - Quality Indicators") +
   scale_color_discrete(name="Quality Indicators", labels=c("Treat Pain", "Improve Walking", "Advise Medicine", "Admitted to Hospital"))

#seeing if there is a noticable correlation between two indicators
#too crowded
data_hospital$Walking <- as.numeric(data_hospital$Walking)
plot(data_hospital$Hospital ~ data_hospital$Walking, pch=20)

#making a second chart
#Key question - how does a provider agency's service change over time
#are good providers always good? 
#is the previous year's level of service a good predictors for future years
data_hospital <- data.frame(data_hospital)
#draws ten random providers
draws <- sample(data_hospital$ProviderNum, 10)
to_graph2 <- data_hospital[data_hospital$ProviderNum %in% draws, c("ProviderNum", "Year", "Walking")]
  
#Will graph based on improvements in walking
to_graph2$Walking <- as.numeric(to_graph2$Walking)
ggplot(data=to_graph2, aes(x=Year, y=Walking)) + geom_line(aes(color=ProviderNum), size=1.25) +
  scale_y_continuous("Annual % of Patients Who Got Better at Walking Around") + labs(title = "Home Health Care - Improvement in Walking") +
  scale_color_discrete(name="Provider IDs")


