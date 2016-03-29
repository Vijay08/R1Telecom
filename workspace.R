read.csv(Original.csv)
train <- read.csv('train.csv')
str(train)
table(train$Churn)
summary(train)
install.packages("ggplot2")
library(ggplot2)
ggplot(train, aes(factor(train$gender)))+
  geom_bar(width = 0.5)

##example//
  
  ggplot(train, aes(x = factor(Churn), fill = factor(gender))) + 
  geom_bar(width = 0.5)

##example//


head(train)

str(train)
summary(train$customerID)
is.na(train$customerID)
summary(train$Churn)
summary(train$TotalCharges) # total charges has 11 NA's #
summary(train$MonthlyCharges)
summary(train$PaymentMethod)
summary(train$PaperlessBilling)
summary(train$Contract)
summary(train$StreamingMovies)
summary(train$StreamingTV)
summary(train$TechSupport)
summary(train$DeviceProtection)
summary(train$OnlineBackup)
summary(train$OnlineSecurity)
summary(train$InternetService)
summary(train$MultipleLines)
summary(train$PhoneService)
summary(train$tenure)
summary(train$Dependents)
summary(train$Partner)
summary(train$SeniorCitizen)
summary(train$gender)
summary(train$customerID)

# total charges has 11 NA's   as of now remove the NA's.. later try figure out substituitng 
# mean or any other relevant values to it.. to make it meaningful..

tc.NA <- train[is.na(train$TotalCharges), ]
tc.NA

tc.NA.no <- train[!is.na(train$TotalCharges), ]
tc.NA.no
train.b <- train[!is.na(train$TotalCharges), ]
train.b

# train.b contains the data other than NA that is omitting the 11 NA rows ... 

#try
length(unique(train$customerID))

length(as.character(unique(train$Contract)))

chuma <- (which(duplicated(train$customerID)))
#try


## men and women ratio who churnd is more likely half of them by ach factor

ggplot(train, aes(x = factor(gender), fill = factor(Churn))) + 
  geom_bar(width = 0.5)

##
ggplot(train, aes(x = factor(SeniorCitizen), fill = factor(Churn))) + 
  geom_bar(width = 0.5)

##
ggplot(train, aes(x = factor(Partner), fill = factor(Churn))) + 
  geom_bar(width = 0.5)

##TotalCharges
# ggplot(train, aes(x = factor(TotalCharges), fill = factor(Churn))) + 
#   geom_bar(width = 1)

##
ggplot(train, aes(x = factor(Dependents), fill = factor(Churn))) + 
  geom_bar(width = 0.5)

##
ggplot(train, aes(x = factor(tenure), fill = factor(Churn))) + 
  geom_bar(width = 0.5)

##
ggplot(train, aes(x = factor(PhoneService), fill = factor(Churn))) + 
  geom_bar(width = 0.5)

##
ggplot(train, aes(x = factor(MultipleLines), fill = factor(Churn))) + 
  geom_bar(width = 0.5)

## important factor // customer using fiber optic are cchurned more or likely 
## half compared to customer using DSL
ggplot(train, aes(x = factor(InternetService), fill = factor(Churn))) + 
  geom_bar(width = 0.5)

##
ggplot(train, aes(x = factor(OnlineSecurity), fill = factor(Churn))) + 
  geom_bar(width = 0.5)

##
ggplot(train, aes(x = factor(OnlineBackup), fill = factor(Churn))) + 
  geom_bar(width = 0.5)

##
ggplot(train, aes(x = factor(DeviceProtection), fill = factor(Churn))) + 
  geom_bar(width = 0.5)

##
ggplot(train, aes(x = factor(TechSupport), fill = factor(Churn))) + 
  geom_bar(width = 0.5)

##
ggplot(train, aes(x = factor(StreamingTV), fill = factor(Churn))) + 
  geom_bar(width = 0.5)

##
ggplot(train, aes(x = factor(StreamingMovies), fill = factor(Churn))) + 
  geom_bar(width = 0.5)

##
ggplot(train, aes(x = factor(Contract), fill = factor(Churn))) + 
  geom_bar(width = 0.5)

##
ggplot(train, aes(x = factor(PaperlessBilling), fill = factor(Churn))) + 
  geom_bar(width = 0.5)

## electronic check vs contract 
ggplot(train, aes(x = factor(PaymentMethod), fill = factor(Churn))) + 
  geom_bar(width = 0.5)

## work on this
ggplot(train, aes(x = factor(MonthlyCharges), fill = factor(Churn))) + 
  geom_bar(width = 0.5)

## work on this
ggplot(train, aes(x = factor(TotalCharges), fill = factor(Churn))) + 
  geom_bar(width = 0.5)

---------------- 
  
  ggplot(train, aes(x = factor(gender), fill = factor(Churn))) + 
  geom_bar(width = 0.5) +
  facet_wrap(~Contract)

----------------
  ggplot(train, aes(x = factor(gender), fill = factor(Churn))) + 
  geom_bar(width = 0.5) +
  facet_wrap(~InternetService)

---------------
  
  ggplot(train, aes(x = factor(gender), fill = factor(Churn))) + 
  geom_bar(width = 0.5) +
  facet_wrap(~Partner)

---------------
  
  ggplot(train, aes(x = factor(gender), fill = factor(Churn))) + 
  geom_bar(width = 0.5) +
  facet_wrap(~Dependents)

---------------
  
  ggplot(train, aes(x = factor(gender), fill = factor(Churn))) + 
  geom_bar(width = 0.5) +
  facet_wrap(~MultipleLines)

---------------
  ggplot(train, aes(x = factor(gender), fill = factor(Churn))) + 
  geom_bar(width = 0.5) +
  facet_wrap(~PaymentMethod)
 
#--------------- contract
  ggplot(train, aes(x = factor(Contract), fill = factor(Churn))) + 
  geom_bar(width = 0.5) +
  facet_wrap(~PaymentMethod)

#--------------
  ggplot(train, aes(x = factor(Contract), fill = factor(Churn))) + 
    geom_bar(width = 0.5) +
    facet_wrap(~InternetService)
  
##--------------
 
  summary(train.b$InternetService) 
  summary(train.b$Contract)
  
  ggplot(train.b, aes(x = factor(Contract), fill = factor(Churn))) +
    geom_bar(width = 0.5) 
  
  ## Month-to-month is one of the factor in contract .. the check.contract is
  ## a variable contains month-month.. the grapth displays churn vs month-to-month
  check.contract <- train.b[which(train.b$Contract == 'Month-to-month'), ]
  
  ggplot(check.contract, aes(x = factor(Contract), fill = factor(Churn))) + 
    geom_bar(width = 0.5) +
    facet_wrap(~Contract)
  
  ggplot(check.contract, aes(x = factor(Contract), fill = factor(Churn))) + 
    geom_bar(width = 0.5) +
    facet_wrap(InternetService~Contract~PaymentMethod+gender)
  
  ggplot(check.contract, aes(x = factor(Contract), fill = factor(Churn))) + 
    geom_bar(width = 0.5) +
    facet_wrap(InternetService~Contract~PaymentMethod~gender)
  
  summary(check.contract$Contract)
  summary(train.b$Contract)
  
  
 ## irrelevant summary(check.contract$InternetService)
 
  