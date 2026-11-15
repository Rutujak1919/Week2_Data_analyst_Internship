import pandas as pd

# Load CSV file
df = pd.read_csv("SQL_Sales_Dataset_200_Rows.xlsx - Sheet1.csv")

# Select numerical columns
numeric_data = df.select_dtypes(include="number")

# Create correlation matrix
correlation = numeric_data.corr()

# Display correlation matrix
print("Correlation Matrix:")
print(correlation)