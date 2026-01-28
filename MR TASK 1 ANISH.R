df=data.frame(
  "Account_No"=c(4589210345,6723491087,5893402176,7310984562,8045623198),
  "Customer_Name"=c("anish kadam","ritesh bhojne","sameer jadhav","sandesh chavan","kunal nikam"),
  "Account_Type"=c("Savings","Current","Savings","Fixed Deposit","Savings"),
  "Branch_Type"=c("Rural","Metro","Rural","Metro","Urban"),
  "Balance"=c(40000,60000,80000,50000,10000),
  "IFSC Code"=c("ICIC0009043","HDFC0001782","SBIN0002451","AXIS0005632","AXIS0005633")
)
df
#add new row
df<-rbind(df,c(452396896,"mihir khair","Savings","semi-urbun",90000,"ICIC0009045"))

#change datatype
df$Account_No<-as.numeric(df$Account_No)
df$Balance<-as.numeric(df$Balance)

#summarize data
summary(df)

str(df)
sapply(df,class)

#add new column
df <-cbind(df,Transition_id=c("TXN-8F3A9C21","TXN-4B7D2E90","TXN-A91C5F38","TXN-6E2D8B74","TXN-C3F709AD","TXN-1D84A6FE"))
                              
                             

#find length
nrow(df)

#delete rows 
df<-df[-5, ]
df<-df[-c(3,4), ]