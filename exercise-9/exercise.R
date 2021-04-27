### Use ncbirths data: birth records from North Carolina
### Read more in the readme file

## Load dplyr library


## Load the data (in the folder 'data' here)
## This is tab-delimited file, so use 'read.delim'


## How many rows and columns are there in the data?


## What are the variable names in data

## what are these variables: read readme

## Youngest and oldest mom
## Do this with a single 'summarize' 


## Print table of mothers' age and number of births by that old moms


## What is the age with most births?
## You can do it with arrange, but try to do it with 'min_rank'!


## What is the mean age birth age for white and non-white moms?


## Compute number of births not by age but by ten-years-of-age
## Hint: create a new variable "age10" or something
## You can use integer division %/% as:
## 35 %/% 10 = 3
## 35 %/% 10 * 10 = 30


## Do the previous question separately for white and non-white moms
## Ensure the final table does not contain NA-s!


## Challenge:
## Do as above, but do not print the counts, print the percentage
## wrt the corresponding racial group


## What is mean birth weight by smoking habit?


## Add the 10-year age to the smoking: is there a trend in
## birth weight over mother's age?


## Which percentage of the births do have father's age recorded?


## Does the presence of fathers age depend on the gender of the birth?
## Maybe dads are more interested to stick around if it is a boy?


## Ask yourself a question and answer it.  Feel free to use variables
## we did not use so far, e.g. weeks.
