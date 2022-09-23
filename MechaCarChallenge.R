#Deliverable 1
#load the dplyr package
library(dplyr)
#Import and read in the MechaCar_mpg.csv file as a dataframe
mpg_data <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)
#linear regression model using lm()
lnrg_mpg_data <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data = mpg_data)
#summary function
summary(lnrg_mpg_data)

# Deliverable 2
# import and read csv file, Suspension_Coil.csv as a Table.
suspension_coil_table <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors = F)
#use the summarize() function to get the mean, median, variance, and stdv of the suspension coil’s PSI column
total_summary <- suspension_coil_table %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI), .groups = 'keep')
#use the group_by() and the summarize() functions to group each manufacturing lot by the mean, median, variance, and stdv of the suspension coil’s PSI column.
lot_summary <- suspension_coil_table %>% group_by(Manufacturing_Lot) %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI), .groups = 'keep')

#Deliverable 3
# t-tests all the lots, population mu of 1500 psi
t.test(suspension_coil_table$PSI, mu = 1500)
#t-test for lot 1-3
t.test(subset(suspension_coil_table, Manufacturing_Lot=="Lot1")$PSI, mu = 1500)
t.test(subset(suspension_coil_table, Manufacturing_Lot=="Lot2")$PSI, mu = 1500)
t.test(subset(suspension_coil_table, Manufacturing_Lot=="Lot3")$PSI, mu = 1500)