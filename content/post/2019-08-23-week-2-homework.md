---
title: Week 2 homework
author: Drew
date: '2019-08-23'
slug: week-2-homework
categories: [homework]
tags: []
---

# Tasks:

## Setup

* Create a directory for this class. Place it somewhere logical on your hard drive (e.g. "~/Documents/classes/GEOL_590", not "~/Desktop/stuff").
* Create an RStudio project in that directory. 
* Create the following directories within your project directory. Pay attention to capitalization!
    * data
    * R
    * plots
    * misc
* Download [all_med_activities.csv](https://www.dropbox.com/s/67zhiqa0ep0d7kr/med_enz.csv?dl=0) and save it to your `data` directory
* Open RStudio and run the following command, to install the **tidyverse** set of packages: `install.packages("tidyverse")`. You will not need to do this again, until you install a new major version of R.

## Basic R operations

Write a script that will do the following:

* Load the **tidyverse** set of packages using the `library()` function
    * Reminder: you have to install packages once in your life (or at least, once per major version of R) by running `install.packages("tidyverse")`
* Read the file that I provide using the `read.csv()` function and assign it to an object called **med_enz** using the `<-` operator. This file contains data on enzyme activities in sediments of the Mediterranean Sea.
* Determine what class **med_enz** belongs to using the `class()` function
* Determine the structure of **med_enz** using the `str()` function
* Determine the number of rows of **med_enz** using the `nrow()` function
* Get a 'glimpse' of **med_enz** using the `glimpse()` function
* Multiply the *activity.nM.hr* column by 1000 using the `$` operator and put the result in a column of **activity.pM.hr**
* Divide the *activity.nM.hr* column by 1000 using the `mutate` function from the **dplyr** package (which is loaded as a part of **tidyverse**) and put it in a column named **activity.uM.hr**
* Print and save a histogram of the *activity.nM.hr* column using the following code, which we will talk more about later:
```
p <- ggplot(data = med_enz, aes(x = activity.nM.hr)) + 
  geom_histogram()
print(p)
ggsave(filename = "plots/hmk_2_plot.png", plot = p, height = 3, width = 4, units = "in", dpi = 300)
```

## Running Scripts

Run that script the following ways:

* Line-by-line in RStudio
* Using the 'source' button in RStudio
* From the command line, using the `Rscript` command. Note: pay attention to what directory you are in, and what directory your new script is in!

## Analysis

What is the difference between the results that are printed in the console when you run line-by-line, vs when you run your script using the 'source' button or the `Rscript` command?