import pandas as pd

# Load CSV file
df = pd.read_csv("SQL_Sales_Dataset_200_Rows.xlsx - Sheet1.csv")

# Group data by category and find total revenue
revenue = df.groupby("category")["total_price"].sum()

# Display total revenue
print("Total Revenue by Category:")
print(revenue)