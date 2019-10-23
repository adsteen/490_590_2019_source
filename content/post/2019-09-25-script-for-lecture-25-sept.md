---
title: Script for lecture, 25 Sept
author: ~
date: '2019-09-25'
slug: script-for-lecture-25-sept
categories: []
tags: []
---

Please copy-paste the code below to download and pre-process some data you'll use in the in-class exercise today.

```
# Setup for in-class exercise
library(tidyverse)
countries_data <- read_csv("https://raw.githubusercontent.com/adsteen/490_590_2019/gh-pages/data/country_capital.csv") %>%
  mutate(growth.2002.2008 = as.numeric(str_remove(growth.2002.2008, "%")))
```