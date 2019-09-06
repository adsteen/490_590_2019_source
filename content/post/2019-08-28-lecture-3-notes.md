---
title: 'Lecture 3 notes: RStudio and the beginnings of R'
author: ~
date: '2019-08-28'
slug: lecture-3-notes
categories: []
tags: []
---

**note** The content of this lesson is taken from one of Software Carpentry's [R lessions](http://swcarpentry.github.io/r-novice-gapminder/)

Some key points are noted below, but definitely look over that lesson (which we will continue to work from). This material goes a bit beyond what we covered in lecture 3. We will focus on creating plots the week of Sept 4, but we will come back to these basic operations as the semester progresses.



# Review

* R vs RStudio
* projects in R

# Data types

* Atomic vectors
    - I will refer to these just as vectors
    - 1-dimensional
    - all objects of the same type (e.g., "character", "integer", "numeric" (aka double-precision), "factor")
    - Pay special attention to factors, which can be surprising 
* Matrices
    - A 2-dimensional vector. We won't use them much, but they do show up occasionally, especially in older code/examples.
* Lists
    - Like a bag: you can throw anything in it you like
* Data frames
    - Think of them like a table: each row is an 'observation', and each column is a variable
    - Consist of vectors, each of which must be the same length but which may be different data types
    - Properly speaking, they are a list of vectors
    - The **tidyverse** set of packages - really it is almost more of a data analysis paradigm than a specific piece of software - really wants you to use data frames. Base R tends to make much more direct use of matrices, vectors, and lists.

# Basic input/output and data manipulation

## Creating / inputting data

* `c()`
* `data.frame()`
* `read.csv()` (**tidyverse** version: `read_csv()`)
* `write.csv()` (**tidyverse** version: `write_csv()`)

## Examining your objects

* `str()`
* `class()`
* `typeof()`
    - Note: compare `class(mtcars)` to `typeof(mtcars)`: what is the difference, and why?
* `print()`
    - if you type `mtcars`, what happens, and why? What about if you type `data.frame`
* `length()`
    - What does `length(mtcars)` return? Why?

## Manipulating objects

* using `$` to access columns of data frames
* using `[]` to subset data frames
    - `mtcars[3, 4]`
    - `mtcars[ , "mpg"]`
    - `mtcars["Toyota Corolla", ]`
    - `mtcars[5:7, "mpg"]`
    - Pay special attention to what each of these returns!
* `subset()`