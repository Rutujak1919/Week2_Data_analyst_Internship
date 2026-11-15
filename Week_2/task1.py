import pandas as pd

# Load CSV file
df = pd.read_csv("SQL_Sales_Dataset_200_Rows.xlsx - Sheet1.csv")

# Display first 5 rows
print(df.head())

# Display basic information
print(df.info())