#step 1: find the excel sheet and call it something R will understand
indicators <- read.csv('../indicator_data.csv',na.strings= c("","na"))


#its easiest to take care of characters and blanks at the beginning
#now, in indicators,when i look at the structure I see that there are 98 observations. one row is blank.
#so I will remove them. [rows, columns maybe]
indicators2 <-indicators[-98, ]
str(indicators2)
View(indicators2)

spnono_4 <- read.csv('../data_r/07_25_17_spnono_serovars.csv')
View(spnono_4)
#i dont know why two extra columns were entered in spnono-4, so I deleted them 
spnono_4 <- select(spnono_4, -X, -X.1)


#step by step to remove characters below

indicators2A[indicators2A == "na"]<-NA
#boxplot(mpg~cyl,data=mtcars, main="Car Milage Data", 
#xlab="Number of Cylinders", ylab="Miles Per Gallon")
boxplot(Enterococcus~Site,data=indicators2, main="Enterococcus counts by site across dates",
xlab="Site type", ylab="CFU/mL")
boxplot(E._coli~Site,data=indicators2, main="E. coli counts by site across dates",
        xlab="Site type", ylab="CFU/mL")



