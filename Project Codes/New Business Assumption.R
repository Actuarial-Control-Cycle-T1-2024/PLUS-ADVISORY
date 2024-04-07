library("tidyverse")
library("data.table")
library("ggplot2")
library("gridExtra")
library("ggcorrplot")

IFPol<-read.csv("inforce_dataset.csv")

##Assumptions ------------------------------------------------------------------

##Predicting Population (By Product)---------------------------------------------
###T20---------------------------------------------------------------------------
Newpol_T20<-IFPol%>%
  filter(Policy.type=="T20")%>%
  group_by(Issue.year)%>%
  summarise(Policies_Joining = n())

# Fit linear regression model
T20_Lm<- lm(Policies_Joining ~ Issue.year, data = Newpol_T20)

# Make predictions & combine with historical data
New_Years<-data.frame(Issue.year=seq(2024,2074,1))  # New data for prediction
T20_Newpol_Pred <- predict(T20_Lm, newdata = New_Years)
T20_Newpol_Pred<-data.frame(New_Years,Policies_Joining=round(T20_Newpol_Pred,0))
T20_Newpol<-rbind(Newpol_T20,T20_Newpol_Pred)
T20_Newpol<-T20_Newpol%>%
  mutate(Type=ifelse(Issue.year>=2024,"Prediction","Historical"))

#Graph
Newpol_T20<-ggplot(T20_Newpol,aes(x=Issue.year,y=Policies_Joining,color=Type))+
  geom_point()+
  geom_smooth(method = "lm", se = TRUE) +
  labs(x="Issue Year",
       y="Number of New Policies",
       title="T20")+
  theme_minimal()

writeClipboard(as.character(round(T20_Newpol_Pred,0)))

###SPWL--------------------------------------------------------------------------

Newpol_SPWL<-IFPol%>%
  filter(Policy.type=="SPWL")%>%
  group_by(Issue.year)%>%
  summarise(Policies_Joining = n())

# Fit linear regression model
SPWL_Lm<- lm(Policies_Joining ~ Issue.year, data = Newpol_SPWL)

# Make predictions & combine with historical data
New_Years<-data.frame(Issue.year=seq(2024,2074,1))  # New data for prediction
SPWL_Newpol_Pred <- predict(SPWL_Lm, newdata = New_Years)
SPWL_Newpol_Pred<-data.frame(New_Years,Policies_Joining=round(SPWL_Newpol_Pred,0))
SPWL_Newpol<-rbind(Newpol_SPWL,SPWL_Newpol_Pred)
SPWL_Newpol<-SPWL_Newpol%>%
  mutate(Type=ifelse(Issue.year>=2024,"Prediction","Historical"))

#Graph
Newpol_SPWL<-ggplot(SPWL_Newpol,aes(x=Issue.year,y=Policies_Joining,color=Type))+
  geom_point()+
  geom_smooth(method = "lm", se = TRUE) +
  labs(x="Issue Year",
       # y="Number of New Policies",
       title="SPWL")+
  theme_minimal()

writeClipboard(as.character(round(SPWL_Newpol_Pred,0)))

grid.arrange(Newpol_T20,Newpol_SPWL,nrow=1)
##Demographic Breakdown ---------------------------------------------------------
###T20---------------------------------------------------------------------------

Issue_years <- 2001:2023
Issueyr_Demo_T20 <- list()

for (year in Issue_years) {
  
  Dummy_name <- paste("IFPol_Copy")
  assign(Dummy_name,IFPol)
  
  Filtered_Data <- get(Dummy_name) %>% 
    filter(Policy.type=="T20" & Issue.year == year) %>%
    group_by(Smoker.Status,Sex,Issue.age,Face.amount) %>%
    summarise(New_Policies = n())
  
  Issueyr_Demo_T20[[as.character(year)]] <- Filtered_Data
  IFPol_Copy<-NULL
}

Issueyr_Demo_T20 <- bind_rows(Issueyr_Demo_T20, .id = "year")
Issueyr_Demo_T20<-Issueyr_Demo_T20%>%
  mutate(Age_Bracket=cut(Issue.age,breaks=c(20,30,40,50,60,70,80,90),labels = c("20-30", "30-40", "40-50", "50-60", "60-70", "70-80", "80-90")),
         Sex_Smoker= paste(Sex,Smoker.Status,sep="_"),
         Age_Bracket_Benefit=paste(Age_Bracket,Face.amount,sep="_"))
New_Pol_Yr_T20<-Issueyr_Demo_T20%>%
  group_by(year)%>%
  summarise(Tot_New_Policies=sum(New_Policies))

Issueyr_Demo_T20<-Issueyr_Demo_T20%>%
  group_by(Sex_Smoker,year,Age_Bracket_Benefit)%>%
  summarise(No_New_Policies=sum(New_Policies))%>%
  left_join(New_Pol_Yr_T20, by = c("year"))%>%
  mutate(Percentage = No_New_Policies/ Tot_New_Policies)
###SPWL--------------------------------------------------------------------------
Issue_years <- 2001:2023

Issueyr_Demo_SPWL <- list()

for (year in Issue_years) {
  
  Dummy_name <- paste("IFPol_Copy")
  assign(Dummy_name,IFPol)
  
  Filtered_Data <- get(Dummy_name) %>% 
    filter(Policy.type=="SPWL" & Issue.year == year) %>%
    group_by(Smoker.Status,Sex,Issue.age,Face.amount) %>%
    summarise(New_Policies = n())
  
  Issueyr_Demo_SPWL[[as.character(year)]] <- Filtered_Data
  IFPol_Copy<-NULL
}

Issueyr_Demo_SPWL <- bind_rows(Issueyr_Demo_SPWL, .id = "year")
Issueyr_Demo_SPWL<-Issueyr_Demo_SPWL%>%
  mutate(Age_Bracket=cut(Issue.age,breaks=c(20,30,40,50,60,70,80,90),labels = c("20-30", "30-40", "40-50", "50-60", "60-70", "70-80", "80-90")),
         Sex_Smoker= paste(Sex,Smoker.Status,sep="_"),
         Age_Bracket_Benefit=paste(Age_Bracket,Face.amount,sep="_"))
New_Pol_Yr_SPWL<-Issueyr_Demo_SPWL%>%
  group_by(year)%>%
  summarise(Tot_New_Policies=sum(New_Policies))

Issueyr_Demo_SPWL<-Issueyr_Demo_SPWL%>%
  group_by(Sex_Smoker,year,Age_Bracket_Benefit)%>%
  summarise(No_New_Policies=sum(New_Policies))%>%
  left_join(New_Pol_Yr_SPWL, by = c("year"))%>%
  mutate(Percentage = No_New_Policies/ Tot_New_Policies)


###Outputs----------------------------------------------------------------------

#Graphs
ggplot(Issueyr_Demo_T20, aes(x=year,y=Percentage,group=Age_Bracket_Benefit,color=Age_Bracket_Benefit)) +
  geom_line(stat="identity")+
  facet_wrap(~Sex_Smoker)+
  labs(y="New Policies %",
       x="Year",
       title="T20")

ggplot(Issueyr_Demo_SPWL, aes(x=year,y=Percentage,group=Age_Bracket_Benefit,color=Age_Bracket_Benefit)) +
  geom_line(stat="identity")+
  facet_wrap(~Sex_Smoker)+
  labs(y="New Policies %",
       x="Year",
       title="SPWL")


