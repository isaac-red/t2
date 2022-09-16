#import pandas aliased as pd and matlib plot aliased as plt

import pandas as pd, matplotlib.pyplot as plt

#import csv as pandas data frame named df1. replace "question 3\\relevent data4.csv" with the relevent path your csv file

df1 = pd.read_csv("question 5\\relevent data4.csv")

#display the info on the dataframe to check the import has been sucsessfull and that the data is in the corect format

df1.info()

#calculate and print corralation between variables. may or may not aplly to your data set, if in doubt delete

cdf1 = df1.corr(method='pearson')

print(cdf1)

#plot graph. replace "scatter" with plot type see matplotlib dcoumentation for details.
# replace x = df1["store_trading_duration_years"] with x = df1["your colum name"]
# replace y = (df1["av_an_rev"]/100000) with y = df1["your other colum name"]

plt.scatter(x = df1["store_trading_duration_years"],y = (df1["av_an_rev"]/10000))

plt.title(" relationship between store trading duration and revenue")
plt.xlabel("store trading duration in years")
plt.ylabel("average anual revenue 100000 USD")

#show graph

plt.show()



