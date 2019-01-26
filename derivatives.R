## Derivatives


##Fwd Contract Payoff function

###You have taken a long position on GBP 1,000,000 on a 6 Month fwd Contract
###Quote: USD/GBP Bid: 2.0483
###Reference: John C Hull Pg 4 Payoffs from Fwd Contract

lotsize=100000
n=1000000   ## GBP 1M to buy  
contract_reqd=n/lotsize
rate=2.0483 ## Quote 1GBP=2.0483 USD
K=rate*lotsize*contract_reqd ## K is the delivery price
s=2.10 ## is the spot price at time t (in this case 6 months)
St=s*lotsize*contract_reqd ## Transaction amount for 1M GBP
St

Payoff=St-K ##Payoff for a long position

S=c(seq(1.6,3.5,0.1))
length(S)
ST=S*n
Payoff=ST-K
d=data.frame(S,ST,K,Payoff)
d
head(d)
plot(S,Payoff,xaxs='i',yaxs='i')

library(ggplot2)

