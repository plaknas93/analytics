##Theory of a firm

## Total average and marginal revenue

#UNDER PERFECT COMPETITION
qty=c(1:10)
price=100
tr=expression(qty*price)
tot_rev=eval(tr,list(qty=qty))
avg_rev=tot_rev/qty
mar_rev= (price*qty)/qty

info=data.frame(qty,price,tot_rev,avg_rev,mar_rev)
info
plot(info$qty,info$price, type = 'line',main = 'Demand Curve for a seller in Perfect Competition',xlab = 'Quantity',ylab="MR,AR,Price", xaxs='i',yaxs='i')

Sys.which("git") 
