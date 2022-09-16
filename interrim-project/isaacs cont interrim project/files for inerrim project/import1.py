import pandas as pd, matplotlib.pyplot as plt


df1 = pd.read_csv("question 3\\relevent data2.csv")

df1.info()



#print(df1)

plt.scatter(y = df1["AnnualRevenue"],x = df1["store_trading_duration_years"])

plt.show()





