
# Import data
Average_Airline_Fatalities<- read.delim(file.choose(), header=T, sep=",")

# Attach the data

attach(Average_Airline_Fatalities)


names(Average_Airline_Fatalities)

library(ggplot2)

ggplot(Average_Airline_Fatalities, aes(x = Year, y = Passenger.Fatalities..US.)) + 
  geom_col() +
  labs(x = 'Year', y = 'Passenger Fatalities in the US', title = 'Fatalities 1985-199 and 2000-2014')

ggplot(Average_Airline_Fatalities, aes(x = Year, y = Passenger.Serious.Injuries..US.)) + 
  geom_col() +
  labs(x = 'Year', y = 'Passenger Serious Injuries in the US', title = 'Serious Injuries 1985-199 and 2000-2014')

ggplot(Average_Airline_Fatalities, aes(x = Year, y = Passenger.Fatalities..Worldwide.)) + 
  geom_col() +
  labs(x = 'Year', y = 'Passenger Fatalities Worldwide', title = 'Fatalities 1985-199 and 2000-2014')

ggplot(Average_Airline_Fatalities, aes(x = Year, y = Passenger.Serious.Injuries..Worldwide.)) + 
  geom_col() +
  labs(x = 'Year', y = 'Passenger Serious Injuries in the US', title = 'Serious Injury 1985-199 and 2000-2014')

plot(Average_Airline_Fatalities)
plot(Average_Airline_Fatalities, type="l", lwd=2, col="red", xlab="Year", ylab="Fatalities", main="Airlines Fatal", ylim=c(0, 100))

