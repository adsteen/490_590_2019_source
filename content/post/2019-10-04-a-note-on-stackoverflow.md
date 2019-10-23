---
title: A note on Stackoverflow
author: ~
date: '2019-10-04'
slug: a-note-on-stackoverflow
categories: []
tags: []
---

[StackOverflow](https://stackoverflow.com) (SO) is a great resource for help with R, or any other programming language. Below are two notes about how to use SO effectively.

* SO is complete enough that, when you are new to R, it is *extraordinarily* unlikely that you will have a question that has not already been asked already. So, before you post a question, spend quite a while searching for similar questions.
* If you are certain that you have a new question, great! It is essential to create a **minimal, reproducible example** of your question.
    * **Minimal** means that you have stripped out all data & code that is not strictly necessary to create your problem. It is helpful to use a standard dataset (e.g. `mtcars`, `iris`, `diamonds`, etc...). Strip the code down to its bare minimum to reproduce the problem, and avoid the use of unnecessary packages, especially uncommon or specialized ones.
    * **Reproducible** means that you provide all the tools users need to reproduce your problem: the names of packages, all underlying data, information about your version of R and any relevant packages, as well as your system. (The output of `R.Version()` and `Sys.info()` is good for this). 
    * Before you post a question, be sure to read [this post](https://stackoverflow.com/questions/5963269/how-to-make-a-great-r-reproducible-example) about how to create a minimal, reproducuble question. This is good advice not just for R, but for any programming language, and really any kind of help request of any form.
    
    