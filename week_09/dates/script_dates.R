## ---- include= FALSE-----------------------------------------------------
library(lubridate)

## ------------------------------------------------------------------------
dates<-c("10/20/2016", "10/21/2016", "10/22/2016")

mdy(dates)
dmy()


## ------------------------------------------------------------------------
parse_date_time("2014-09-24 15:23:10", orders="ymd hms")  
parse_date_time("09/24/2014 15-23-10", orders="mdy hms")
parse_date_time("24 09 2014 15 23 10", orders="dmy hms")
parse_date_time("24-09-14 15-23-10", orders="dmy hms")
parse_date_time("Sep 24, 2014 15:23:10", orders="mdy hms")

## ------------------------------------------------------------------------
month("2016-10-21")
day("2016-10-21")
year("2016-10-21")

## ------------------------------------------------------------------------
yday("2016-10-21")
yday(mdy(dates))

## ------------------------------------------------------------------------
now<-Sys.time()
prelim<-"2016-10-25 09:00:00 CDT"
prep<-now %--% prelim 
prep

## ------------------------------------------------------------------------
depart<-"2016-10-23 12:00:00 CDT"
return<-"2016-10-25 20:00:00 CDT"
workshop<- depart %--% return
workshop

## ------------------------------------------------------------------------
int_overlaps(prep, workshop)

## ------------------------------------------------------------------------
setdiff(prep, workshop)

## ------------------------------------------------------------------------
as.period(prep %% months(1))

