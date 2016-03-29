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

# train.b contains the data other than NA that is 



check.contract <- train.b[which(train.b$Contract == 'Month-to-month'), ]

ggplot(check.contract, aes(x = factor(Contract), fill = factor(Churn))) + 
    geom_bar(width = 0.5) +
    facet_wrap(~Contract)

ggplot(check.contract, aes(x = factor(Dependents), fill = factor(Churn))) + 
  geom_bar(width = 0.5) +
  facet_wrap(~Contract~gender)


 summary(check.contract$Contract)
 
 
 ggplot(check.contract, aes(x = factor(Contract), fill = factor(Churn))) + 
   +     geom_bar(width = 0.5) +
   +     facet_wrap(InternetService~Contract)
 
 ggplot(check.contract, aes(x = factor(Contract), fill = factor(Churn))) + 
   +     geom_bar(width = 0.5) +
   +     facet_wrap(InternetService~Contract~PaymentMethod)
 
 ## overall plot considering important attribtes for prediction. 
 ggplot(check.contract, aes(x = factor(Contract), fill = factor(Churn))) + 
    geom_bar(width = 0.5) +
  facet_wrap(InternetService~Contract~PaymentMethod~gender)
 
 ggplot(train, aes(x = factor(Contract), fill = factor(Churn))) + 
   +     geom_bar(width = 0.5) +
   +     facet_wrap(~InternetService)
 
 
 ggplot(train.b, aes(x = factor(MonthlyCharges), fill = factor(Churn))) +
   geom_bar(width = 0.5)
 
plot(train.b$MonthlyCharges)
 
 library(ggplot2)


ggplot(check.contract, aes(x = factor(Dependents), fill = factor(Churn))) + 
  geom_bar(width = 0.5) +
  facet_wrap(~Contract~gender)


