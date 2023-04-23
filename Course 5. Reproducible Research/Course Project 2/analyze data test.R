dataku = read.csv("repdata_data_StormData.csv")

length(unique(dataku$EVTYPE))
unique_evtype = unique(dataku$EVTYPE)

sort(unique_evtype)

# event_types <- tolower(unique_evtype)
# event_types
# sort(event_types)

# event_types2 <- gsub("[[:punct:][:blank:]+]", " ", event_types)
# sort(event_types2)
# length(unique(event_types2))

## preprocess the EVTYPE
temp <- dataku$EVTYPE
temp <- tolower(temp)
temp <- gsub("[[:punct:][:blank:]+]", " ", temp)
dataku$EVTYPE <- temp

## check fatalities
unique_evtype <- unique(dataku$EVTYPE)

## try to loop
title <- c()
ttt <- c()
sss <- c()
for (ev_name in unique_evtype) {
  # print(i)
  # ttt$ev_name <- sum(dataku$FATALITIES[dataku$EVTYPE == ev_name])
  # sss$ev_name <- sum(dataku$INJURIES[dataku$EVTYPE == ev_name])
  title <- append(title, ev_name)
  ttt <- append(ttt, sum(dataku$FATALITIES[dataku$EVTYPE == ev_name]))
  sss <- append(sss, sum(dataku$INJURIES[dataku$EVTYPE == ev_name]))
}

# fatalities
df_fatalities <- data.frame(title, ttt)
# injuries
df_injuries <- data.frame(title, sss)


df_fatalities <- df_fatalities[order(df_fatalities$ttt, decreasing=TRUE),]
df_injuries <- df_injuries[order(df_injuries$sss, decreasing=TRUE),]

# result
library(ggplot2)
p1 <- ggplot(data=df_fatalities[1:15,], aes(x=fat, y=reorder(title, fat))) + geom_bar(stat="identity")
p1
p2 <- ggplot(data=df_injuries[1:15,], aes(x=inj, y=reorder(title, inj))) + geom_bar(stat="identity")
p2









## effect of event on economy
# check unique first
unique(dataku$PROPDMG)
unique(dataku$PROPDMGEXP)
unique(dataku$CROPDMG)
unique(dataku$CROPDMGEXP)


a <- 3

if (a < 10 & a == 4) {
  print("babi")
}

## fail 1 too long
# prop_dmg <- c()
# for (i in 1:length(dataku$PROPDMGEXP)) {
#   temp <- dataku$PROPDMGEXP[i]
#   if (temp == 'h' | temp == 'H')
#     temp2 <- 2
#   else if (temp == 'k' | temp == 'K')
#     temp2 <- 3
#   else if (temp == 'm' | temp == 'M')
#     temp2 <- 6
#   else if (temp == 'b' | temp == 'B')
#     temp2 <- 9
#   else if (!is.na(as.numeric(temp)))
#     temp2 <- as.numeric(temp)
#   else
#     temp2 <- 0
#   
#   prop_dmg <- append(prop_dmg, temp2)
#   print(i)
# }

## fail2,, too long
# prop_dmg <- c()
# i <- 1
# for (temp in dataku$PROPDMGEXP) {
#   if (temp == 'h' | temp == 'H')
#     temp2 <- 2
#   else if (temp == 'k' | temp == 'K')
#     temp2 <- 3
#   else if (temp == 'm' | temp == 'M')
#     temp2 <- 6
#   else if (temp == 'b' | temp == 'B')
#     temp2 <- 9
#   else if (!is.na(as.numeric(temp)))
#     temp2 <- as.numeric(temp)
#   else
#     temp2 <- 0
#   
#   prop_dmg <- append(prop_dmg, temp2)
#   i <- i + 1
#   if (i %% 1000 == 0)
#     print(i)
# }

## this is incredibly fast way to do
converter <- function(x) {
  if (x == 'h' | x == 'H')
    return(2)
  else if (x == 'k' | x == 'K')
    return(3)
  else if (x == 'm' | x == 'M')
    return(6)
  else if (x == 'b' | x == 'B')
    return(9)
  else if (!is.na(as.numeric(x)))
    return(as.numeric(x))
  else {0}
  }

temp <- sapply(dataku$PROPDMGEXP, FUN=converter)
prop_dmg <- dataku$PROPDMG * (10 ** temp)
temp <- sapply(dataku$CROPDMGEXP, FUN=converter)
crop_dmg <- dataku$CROPDMG * (10 ** temp)

df_prop_dmg <- data.frame("title" = dataku$EVTYPE, prop_dmg)
df_crop_dmg <- data.frame("title" = dataku$EVTYPE, crop_dmg)

title <- c()
ttt <- c()
sss <- c()
for (ev_name in unique_evtype) {
  title <- append(title, ev_name)
  ttt <- append(ttt, sum(df_prop_dmg$prop_dmg[df_prop_dmg$title == ev_name]))
  sss <- append(sss, sum(df_crop_dmg$crop_dmg[df_crop_dmg$title == ev_name]))
}

#remake
df_prop_dmg <- data.frame(title, ttt)
df_crop_dmg <- data.frame(title, sss)

df_prop_dmg <- df_prop_dmg[order(df_prop_dmg$ttt, decreasing=TRUE),]
df_crop_dmg <- df_crop_dmg[order(df_crop_dmg$sss, decreasing=TRUE),]

# result
library(ggplot2)
p1 <- ggplot(data=df_prop_dmg[1:15,], aes(x=ttt, y=reorder(title, ttt))) + geom_bar(stat="identity")
p1
p2 <- ggplot(data=df_crop_dmg[1:15,], aes(x=sss, y=reorder(title, sss))) + geom_bar(stat="identity")
p2
