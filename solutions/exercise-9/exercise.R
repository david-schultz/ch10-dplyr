### Use ncbirths data: birth records from North Carolina
### Read more in the readme file

## Load dplyr library
library(dplyr)

## Load the data (in the folder 'data' here)
## This is tab-delimited file, so use 'read.delim'
births <- read.delim("data/ncbirths.csv.bz2")

## How many rows and columns are there in the data?
nrow(births)
ncol(births)

## What are the variable names in data
names(births)
## what are these variables: read readme

## Youngest and oldest mom
## Do this with a single 'summarize' 
births %>%
   summarize(youngest = min(mage), oldest=max(mage))

## Print table of mothers' age and number of births by that old moms
births %>%
   count(mage)
## alternatively
births %>%
   group_by(mage) %>%
   summarize(n = n())

## What is the age with most births?
## You can do it with arrange, but try to do it with 'min_rank'!
births %>%
   count(mage) %>%
   filter(min_rank(desc(n)) == 1)
## Or alternatively
births %>%
   count(mage) %>%
   arrange(n) %>%
   tail(1)

## What is the mean age birth age for white and non-white moms?
births %>%
   filter(!is.na(whitemom)) %>%
   group_by(whitemom) %>%
   summarize(age = mean(mage))

## Compute number of births not by age but by ten-years-of-age
## Hint: create a new variable "age10" or something
## You can use integer division %/% as:
## 35 %/% 10 = 3
## 35 %/% 10 * 10 = 30
births %>%
   mutate(age10 = mage %/% 10 * 10) %>%
   count(age10)

## Do the previous question separately for white and non-white moms
## Ensure the final table does not contain NA-s!
births %>%
   filter(!is.na(whitemom)) %>%
   mutate(age10 = mage %/% 10 * 10) %>%
   group_by(whitemom) %>%
   count(age10)

## Challenge:
## Do as above, but do not print the counts, print the percentage
## wrt the corresponding racial group
births %>%
   filter(!is.na(whitemom)) %>%
   mutate(age10 = mage %/% 10 * 10) %>%
   group_by(whitemom) %>%
   count(age10) %>%
   group_by(whitemom) %>%
   mutate(moms = sum(n)) %>%
   mutate(pct = n/moms)

## What is mean birth weight by smoking habit?
births %>%
   filter(!is.na(habit)) %>%
   group_by(habit) %>%
   summarize(mean(weight))

## Add the 10-year age to the smoking: is there a trend in
## birth weight over mother's age?
births %>%
   filter(!is.na(habit)) %>%
   mutate(age10 = mage %/% 10 * 10) %>%
   group_by(habit, age10) %>%
   summarize(mean(weight))

## Which percentage of the births do have father's age recorded?
mean(!is.na(births$fage))
## or alternatively
births %>%
   summarize(mean(!is.na(fage)))

## Does the presence of fathers age depend on the gender of the birth?
## Maybe dads are more interested to stick around if it is a boy?
births %>%
   group_by(gender) %>%
   summarize(mean(!is.na(fage)))
                           # virtually no difference

## Ask yourself a question and answer it.  Feel free to use variables
## we did not use so far, e.g. weeks.
