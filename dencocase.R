# Case Study - Denco  

#read file : Method1 Directly from the folder
sales1 = read.csv("./data/denco.csv")
str(sales1)
head(sales1)

#read file : Method2 Choosing location
sales2 = read.csv(file.choose())
str(sales2)
head(sales2)

#read file: Method3 Directly from googlesheet Focus of Gid No to id the sheet
#install.packages('gsheet')
library(gsheet)
url = "https://docs.google.com/spreadsheets/d/1h7HU0X_Q4T5h5D1Q36qoK40Tplz94x_HZYHOJJC_edU/edit#gid=216113907"
sales3 = as.data.frame(gsheet2tbl(url))
str(sales3)
head(sales3)
#head(sales1,n=7)
#names(sales1)

# whichever you read the data, store it in sales object
sales = sales2  # keeping a backup
str(sales)
class(sales)
str(sales)
summary(sales)

str(sales)
dim(sales) #dimensios of DF rows & colnum
unique(sales$custname)
length(unique(sales$custname)) ##unique customers
length(unique(sales$region )) ##Total regions and name

#Rqmt-1 : Loyal Customers ----- Freq count
#method-1a
#using table for counting custname occurance
(t1=table(sales$custname)) 
head(t1)  #unsorted
t2= sort(t1,decreasing=T )
head(t2)
#Method-1b - using dplyr
library(dplyr)
##For customers
## %>% is subset of a set
head(sales)
sales %>% dplyr::count(custname, sort=TRUE) ## %>% is called pipe funct
sales %>% dplyr::group_by(custname) %>% dplyr::summarise(n = n()) %>% dplyr::arrange(desc(n))
#For counting regions: Freq of Sales by region
sales %>% dplyr::count(region,sort=T)

#Reqmt2- Profitable parts----
#which parts are sold more frequently - count 
sales %>% dplyr::group_by(partnum) %>% dplyr::summarise(n = n()) %>% dplyr::arrange(desc(n))

# which parts have highest Profit : partno - sum(profit)
sales %>% group_by (partnum) %>% summarise(TotalMargin= sum(margin)) %>% arrange(desc(TotalMargin)) %>% head()
highprof=sales %>% group_by(partnum) %>% summarise(TotalMargin=sum(margin))
highprof[order(-highprof$TotalMargin),]
length(unique(sales$partnum))

#Reqmt-3 : which region generated how much revenue
sales
head(sales)
sales %>% group_by(region) %>% summarise(TotalRevenue=sum(revenue)) %>% arrange(desc(TotalRevenue)) 
regionRevenue = sales %>% group_by(region) %>% summarise(TotalRevenue=sum(revenue)) %>% arrange(desc(TotalRevenue)) 
regionRevenue
barplot(regionRevenue$TotalRevenue)
pie(regionRevenue$TotalRevenue)

#Reqmt-4 : which customer (top 5) gave most revenue
head(sales)
Total_Cust_Rev=sales %>% group_by(custname) %>% summarise(TotalRevenue=sum(revenue)) %>% arrange(desc(TotalRevenue))  %>% head(n=5)
head(Total_Cust_Rev)
barplot(Total_Cust_Rev$TotalRevenue)

#Reqmt-5 : top 2 customers names by revenue from each region
sales %>% group_by(region,custname) %>% summarise(TotalRevenue=sum(revenue)) %>% arrange(desc(TotalRevenue))  %>% print(n=Inf)
#print all rows print(n=Inf)
#now print only top 2 for each region
sales %>% group_by(region,custname) %>% summarise(TotalRevenue=sum(revenue)) %>% arrange(desc(TotalRevenue))  %>% top_n(n=2)

#Reqmt-6 : all partnos with margin > 10000 in order region, desc(revenue)
sales %>% filter(margin > 10000) %>% arrange(region, desc(revenue))
#another way
filter(sales, margin > 10000)  #just margin

#Reqmt-7 : East Region and revenue > 4000000
sales %>% filter(region == '01-East' & revenue > 400000) %>% select(partnum, region, revenue)

#Reqmt-8 : create another column with 10% increase in column margin
sales %>% mutate(newmargin=margin * .90) %>% select(partnum, margin, newmargin)


sales %>% filter(region=='9x-Export') %>% group_by(custname) %>% summarise(max(revenue))


#Products that are Regional Leaders in each region
head(sales)
Regional_leader = sales %>% group_by(region,partnum) %>% summarise(TotalRevenue=sum(revenue)) %>% arrange(desc(TotalRevenue)) %>% print(n=Inf)

sales %>% group_by(region,partnum) %>% summarise(TotalRevenue=sum(revenue)) %>% arrange(desc(TotalRevenue)) %>% top_n(n=2)

sales %>% group_by(region,partnum) %>% summarise(TotalRevenue=sum(revenue)) %>% arrange(desc(TotalRevenue))  %>% top_n(n=2)
