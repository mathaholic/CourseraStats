library(dplyr)
load(url("http://bit.ly/dasi_gss_data"))
gss <- tbl_df(gss)
gssvet <- subset(gss, gss$vetyears != "na" & natroad != "na")
gssvetnone <- subset(gssvet, gssvet$vetyears == "None")
vetnonesubset <- select(gssvetnone, vetyears, natroad)
gssvetsome <- subset(gssvet, gssvet$vetyears != "None")
vetsomesubset <- select(gssvetsome, vetyears, natroad)
barplot(table(vetnonesubset))
barplot(table(vetsomesubset))