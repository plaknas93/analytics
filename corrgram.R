library(corrgram)

##Generating Random numbers

x=1:300
y=runif(300)
xy=data.frame(x,y)
plot(x,y)
corrgram(xy, order=TRUE, lower.panel=panel.shade,
         upper.panel=panel.pie, text.panel=panel.txt,
         main="Car Milage Data in PC2/PC1 Order")
corrgram(xy, order=TRUE, lower.panel=panel.ellipse,
         upper.panel=panel.pts, text.panel=panel.txt,
         diag.panel=panel.minmax, 
         main="Car Mileage Data in PC2/PC1 Order")

#r2 0.4 adj is 0.25
1-(0.58*1.285)
