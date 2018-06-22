#Financial Data Analysis
#Given 2 vectors: revenue and expenses of an organisation
revenue <- c(14574.49, 7606.46, 8611.41, 9175.41, 8058.65, 8105.44, 11496.28, 9766.09, 10305.32, 14379.96, 10713.97, 15433.50)
expenses <- c(12051.82, 5695.07, 12319.20, 12089.72, 8658.57, 840.20, 3285.73, 5821.12, 6976.93, 16618.61, 10054.37, 3803.96)

#Calculating Profit
profit <- revenue - expenses
profit

#Profit after tax for each month
tax <- round((30/100) * profit, digits = 2)
tax
profit_after_tax <- profit - tax
profit_after_tax

#profit margin for each month - equals to profit a after tax divided by revenue
profit_margin <- round(profit_after_tax / revenue, 2) *100
profit_margin

#good months - where the profit after tax was greater than the mean for the year
good_months <- profit_after_tax > mean(profit_after_tax)
good_months
#December has the highest profit. June, July, August, Sept months earned the second highest profit for the year.

#bad months - where the profit after tax was less than the mean for the year
bad_months <- profit_after_tax < mean(profit_after_tax)
bad_months
#March and October suffered the highest losses for the year

#the best month - where the profit after tax was max for the year
best_month <- profit_after_tax == max(profit_after_tax)
best_month
#December was the best month

#the worst month - where the profit after tax was min for the year
worst_month <- profit_after_tax == min(profit_after_tax)
worst_month
#March was the worst month

#Presented in Units $1000 with no decimal points
revenue_1000 <- round(revenue/1000)
expenses_1000 <- round(expenses/1000)
profit_1000 <- round(profit/1000)
profit_after_tax_1000 <- round(profit_after_tax/1000)


#combined_results

combined_results <- rbind(revenue_1000, expenses_1000, profit_1000, profit_after_tax_1000, profit_margin, good_months, bad_months, best_month, worst_month)
colnames(combined_results) <- c("Jan", "Feb", "Mar", "Apr", "May", "Jun", "July", "Aug", "Sept", "Oct", "Nov", "Dec")
round(combined_results)




#(c) Kirill Eremenko
