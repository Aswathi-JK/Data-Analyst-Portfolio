import pandas as pd

df = pd.read_csv("C:/Dev/Python_projects/sales_data.csv", encoding = "latin1")

print(df.head())
print(df.columns)
print(df.info())

print("Total Sales =", df["Sales"].sum)