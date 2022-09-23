# MechaCar_Statistical_Analysis

## Linear Regression to Predict MPG

![insertphoto](/MechaCarChallenge_MPG_Table_Linear_Regression_Summary.png)

Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
The variables that provided a non-random amount of variance when compared to the mpg values are vehicle_length and ground_clearance. 

Is the slope of the linear model considered to be zero? Why or why not?
No, the slope is not considered to be zero. The p-value of 5.35e-11 is much smaller than the significance level of 5%, which is enough to reject our null hypothesis.

Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
Yes. The r-squared value of 0.7149 indicates that we are approx. 72% confident that this linear model predicts the mpg of prototypes effectively, with consideration that we only compared to the 6 data points available. 


## Summary Statistics on Suspension Coils

![insertphoto](/deliv2_tt_summary.png)

![insertphoto](/deliv2_lot_summary.png)

Does the current manufacturing data meet the design specification that the variance of the suspension coils must not exceed 100 pounds per square inch for all manufacturing lots in total and each lot individually? Why or why not?
Total variance less than 100 (rounding down to 62) is acceptable. Lots 1 & 2 are also well below the variance limit of 100psi, however Lot 3 exceeds, at 170 so it does not meet the design specs. 

## T-Tests on Suspension Coils

![all](/t.test_all_lots.png)
The p-value is 0.06028, greater than 0.05 significance level. 

![lot1](/t.test_lot1.png)
The p-value is 1, greater than 0.05 significance level.

![lot2](/t.test_lot2.png)
The p-value is 0.6072, greater than 0.05 significance level. 

![lot3](/t.test_lot3.png)
The p-value is 0.04168, less than 0.05 significance level. As shown in the previous deliverable, lot 3 does not fit the standard and should not be considered comparable to lots 1 or 2. Further research and data analysis would be required to determine why this mean differs from the standard population mean.

## Study Design: MechaCar vs Competition
In order to determine how MechaCar inventory performs compared to the competing companies, comparison of relevant variables is needed. The breakdown needs to be clear and concise for the average consumer/car-buyer to interpret the results. 

What metric or metrics are you going to test?
Comparing the following metrics would be valuable for potential car-buyers:
  
  Overall purchase price
  Fuel-efficiency
  Maintenance cost
  Average cost of car insurance for this make/model

We want to use multiple variables (fuel effeciency, maintenance cost, and avg cost of insurance) to predict overall purchase price. 

What is the null hypothesis or alternative hypothesis?
Null: There is no statistical difference between MechaCar overall purchase price and their competitor's overall purchase price. 
Alternative: There is statistical difference between MechaCar and competitors when it comes to overall purchase price.

What statistical test would you use to test the hypothesis? And why?
Multiple Linear Regression would be the most relevant test to use, because we're comparing multiple variables. 

What data is needed to run the statistical test?
All variables listed above are needed as data points from MechaCar and it's competitors. In order to hold greater statistical validity, we would want as large of a data set as possible. We might want to consider limiting data with factors such as domestic vs. foreign cars to avoid unseen variables such as import costs that we are not including as variables in our regression.  
