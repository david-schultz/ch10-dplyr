### Exercise 8: Pulitzer Prizes

### Read in the data.  It is comma-separated, so read with read.csv
pulitzer <- read.csv("data/pulitzer-circulation-data.csv")

## Install and load the needed libraries
## Be sure to comment out the install.packages function so it won't install it every time it runs
## Remeber you only need to install a package once
## install.packages(dplyr)
library(dplyr)


## Print a few random lines from the dataset
## Use 'head' and 'tail' to print first and last line
## check out 'sample_n' to print random lines
head(pulitzer)
tail(pulitzer)
sample_n(pulitzer, 5)


## Use 'names' or 'colnames' to print out the names of the columns
## What do you think about the variable names?
print(colnames(pulitzer))

## Rename the variables into something easier, e.g.
## 'circulation2004' and 'winners1990.2003'
## hint: check out dplyr function 'rename'


## Use 'str' to print what types of values are contained in each column
## Did any value type surprise you?  Why do you think they are that type?


## Add a column in a dataframe called 'difference'
## that contains the difference in changes
## in Pulitzer Prize Winners from 2004 to 2013 and
## Pulitzer Prize Winners from 1990 to 2003.


## What publication gained the most pulitzer prizes from 2004-2014?
## Be sure to use the pipe operator! 


## Which publication with at least 5 Pulitzers won from 2004-2014
## had the biggest fall (negative growth) in Daily circulation numbers? 
## This publication should have Pulitzer prizes won a minimum of 5 Pulitzers,
## as well as the biggest decrease in circulation


# Your turn! An important part about being a data scientist is asking questions. 
# Create a question and use dplyr to figure out the answer.  

  

