import pandas as pd

# Load CSV file
df = pd.read_csv("SQL_Sales_Dataset_200_Rows.xlsx - Sheet1.csv")

# Check missing values
print("Missing Values:")
print(df.isnull().sum())

# Remove missing values
df = df.dropna()

# Check duplicate values
print("Duplicate Rows:")
print(df.duplicated().sum())

# Remove duplicate values
df = df.drop_duplicates()

# Display final data
print("After Cleaning:")
print(df)

print("Final Shape:", df.shape)