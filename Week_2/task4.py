import pandas as pd

# Load CSV file
df = pd.read_csv("SQL_Sales_Dataset_200_Rows.xlsx - Sheet1.csv")

# Sort data by multiple columns
sorted_data = df.sort_values(
    by=["category", "total_price"],
    ascending=[True, False]
)

# Display sorted data
print("Sorted Data:")
print(sorted_data)