import pandas as pd, matplotlib.pyplot as plt

df1 = pd.read_csv("question 3\\relevent data3.csv")

df1.info()

#print(df1)

plt.scatter(y = (df1["av_an_sales"]/1000000),x = df1["store_trading_duration_years"])

plt.show()

print('           show coralation')

cdf1 = df1.corr(method='pearson')

print(cdf1)

