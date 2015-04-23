library("tools")
library("ggplot2")
library("plyr")
library("stringr")
library("R.utils")


# file information (downloaded on 4/21/2015 3:20 PM CDT)
filelink <- "https://d396qusza40orc.cloudfront.net/repdata%2Fdata%2FStormData.csv.bz2"
filename <- "repdata_data_StormData.csv.bz2"
filechecksum <- "df4aa61fff89427db6b7f7b1113b5553"  
extractedfile <- "Extracted Data/repdata_data_StormData.csv"
extractedfilechecksum <- "33ab0bd27d935eeefef0dd7300f800af"

# check to see if file is missing or checksum has changed 
if (!file.exists(filename)|md5sum(filename) != filechecksum) {
        # download the file.
        download.file(filelink, filename)
}

if (!file.exists(extractedfile) | md5sum(extractedfile) != extractedfilechecksum) {
        # extract file
        bunzip2(filename = filename, destname = extractedfile)
}

sd <- read.csv(extractedfile)
