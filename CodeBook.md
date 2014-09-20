CodeBook
========

The actions I did to data set described below.

h1. Step 1. Merging the Data

For both test and train datasets:

* loaded subjects
* loaded activities
* loaded measurments
* merged all above-mentioned

After that, rbind-ed both datasets.

h1. Step 2. Selecting means and stds

1. Loaded the features list
2. Grep-ed the list by 'mean' and 'std'. As the reuslt, meanfreq valuse are also in resulting dataset
3. Subsetted the list from step 1 by the results received above, keeping in mind that two columns were added ahead.

h1. Step 3. Renaming the activities

The solution took 2 strings of code and almost a day of thinking ;)
1. Read the activity list
2. Replaced the numbers on the original dataset with names, that stands against the number.

h1. Step 4. Naming columns

Named 1st and 2nd row as 'Subject' and 'Activity', others as names from step 2.

h1. Step 5. New data set

Melted the data set by Subject and activity, than dcasted to get means.

Thank you for your time! Good luck!