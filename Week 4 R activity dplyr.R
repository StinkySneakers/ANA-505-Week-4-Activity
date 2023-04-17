#Week 4: dplyr package

#Task: Write the function to get a dataset from Base R: Titanic
#and give the dataframe a new name of your choice
#(hint: you will want your data to be a dataframe. Use the function: as.data.frame(Titanic))
data("Titanic")
Shuang_Titan <- as.data.frame(Titanic)

#See the top rows of the data
#TASK: Write the function to see the top rows of the data
head(Shuang_Titan)

#Install and call the package dplyr
#TASK: Write the functions to install and call dplyr
install.packages("dplyr")
library(dplyr)

#Let's just see the Survived and Sex columns
#Task: Write the function to 'select' the Survived and Sex columns 
#(hint: use the 'select' function)
selected <- Shuang_Titan %>%
  select(Survived, Sex)

#Let's name the dataset with just the two columns, Survived and Sex
#TASK: Write the function to save the two columns as one new dataset
#and give it a name
Shuang_select <- Shuang_Titan %>%
  select(Survived, Sex)

#Let's get rid of the Sex column in the new dataset created above
#TASK: Write the function that deselects the sex column
#(hint: use the 'select' function to not select a -column)
Shuang_select_no_sex <- Shuang_select %>%
  select(-Sex)

#Let's rename a column name
#TASK: Write the function that renames 'Sex' to 'Gender'
Shuang_select_renamed <- Shuang_select %>%
  rename(Gender = Sex)

#Let's make a new dataframe with the new column name
#TASK: Write the function that names a new dataset that includes the 'gender' column
Shuang_Titan_renamed <- Shuang_Titan %>%
  rename(Gender = Sex)

#Let's 'filter' just the males from our dataset
#TASK: Write the function that includes only rows that are 'male'
Shuang_Titan_male <- Shuang_Titan_renamed %>%
  filter(Gender == "male")

#Let's 'arrange' our data by gender (not the data you just filtered)
#TASK: Write the function to group the data by gender (hint: arrange())
Shuang_Titan_grouped <- Shuang_Titan_renamed %>%
  group_by(Gender)

#Let's see how many people were examined in the dataset (total the frequency in the original dataframe)
#TASK: Sum the Freq column
Shuang_Titan_sum <- Shuang_Titan %>%
  summarise(Freq_sum = sum(Freq))
print(Shuang_Titan_sum)
#TASK: After you run it, write the total here:2201

#Since we have a males dataset, let's make a females dataset
#TASK: Write the function that includes only rows that are 'female'
Shuang_Titan_female <- Shuang_Titan_renamed %>%
  filter(Gender == "female")

#And now let's join the males and females
#TASK: Write the function that joins the male and female rows 
#(hint: try using 'union' or 'bind_rows')
Shuang_Titan_joined <- bind_rows(Shuang_Titan_male, Shuang_Titan_female)

#Optional Task: add any of the other functions 
#you learned about from the dplyr package
# arrange() sort based on columns
# count() find the number of occurrences of unique values
# distinct() remove duplicate rows
# mutate() create columns based on existing ones
