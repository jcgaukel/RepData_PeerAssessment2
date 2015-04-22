---
title: "Storm Data"
output:
  html_document:
    keep_md: yes
    toc: yes
pdf_document: default
keep_md: yes
word_document: default
---


## Synopsis
The purpose of this analysis is to help answer the following questions:

* Across the United States, which types of events (as indicated in the EVTYPE variable) are most harmful with respect to population health?

* Across the United States, which types of events have the greatest economic consequences?


## Data Processing

[National Weather Service Storm Data Documentation](https://d396qusza40orc.cloudfront.net/repdata%2Fpeer2_doc%2Fpd01016005curr.pdf)

[National Climatic Data Center Storm Events FAQ](https://d396qusza40orc.cloudfront.net/repdata%2Fpeer2_doc%2FNCDC%20Storm%20Events-FAQ%20Page.pdf)


```r
# loading all required libraries
library(tools)


# file information (downloaded on 4/21/2015 3:20 PM CDT)
filelink <- "https://d396qusza40orc.cloudfront.net/repdata%2Fdata%2FStormData.csv.bz2"
filename <- "repdata_data_StormData.csv.bz2"
filechecksum <- "df4aa61fff89427db6b7f7b1113b5553"  

# check to see if file is missing or checksum has changed 
if (!file.exists(filename)|md5sum(filename) != filechecksum) {
        # download the file.
        download.file(filelink, filename)
        }         

# read in data file
#sd <- read.csv(bzfile(filename))
```





## Results







