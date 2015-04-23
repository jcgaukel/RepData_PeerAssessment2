#write.csv(read.csv(bzfile(filename))$EVTYPE, "Extracted Data/EVTYPES.csv")

# EVT <- data.frame(sort(unique(read.csv("Extracted Data/EVTYPES.csv")$x)))
# names(EVT)[1] <- "EVTYPE"

clean.EVTYPE <- function(x){
        library(stringr)
        
        # remove spaces before and after
        new.EVTYPE <- str_trim(x, side="both")
        
        # change to upper case
        new.EVTYPE <- toupper(new.EVTYPE)
        
        # remove misc punctuation
        new.EVTYPE <- sub("\\.$", "", new.EVTYPE)
        new.EVTYPE <- sub("\\(", " ", new.EVTYPE)
        new.EVTYPE <- sub(")$", "", new.EVTYPE)
        new.EVTYPE <- sub(";$", "", new.EVTYPE)
        
        # remove all double spaces within value
        while(length(grep("  ", new.EVTYPE)) > 0){new.EVTYPE <- sub("  ", " ", new.EVTYPE)}
  
        # remove spaces before and after slashes and stanardize them
        new.EVTYPE <- sub("-", "/", new.EVTYPE)
        new.EVTYPE <- sub(";", "/", new.EVTYPE)
        new.EVTYPE <- sub("\\\\", "/", new.EVTYPE)
        new.EVTYPE <- sub("/ ", "/", new.EVTYPE)
        new.EVTYPE <- sub(" /", "/", new.EVTYPE)

        return(new.EVTYPE)

}

EVT$NEW.EVTYPE <- clean.EVTYPE(EVT$EVTYPE)
