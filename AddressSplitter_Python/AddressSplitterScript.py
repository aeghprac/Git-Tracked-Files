import pandas as pd
import re

pd.set_option('display.max_rows', 150)

raw_address = pd.read_csv("Address_Data\MintedAddressBook - minted-addressbook-template.csv", usecols=range(0,3))

# Replace all new line chars with a space
raw_address.replace("\n", " ", regex=True, inplace=True)

def split_address(df, address_col):
    # Define the regex pattern for a US address
    
    pattern = r"""^(?P<street>[\w\s]+\.?),?\s+(?P<unit>(?:\#|Apt|apt|No|no|Number|number|Ste|ste|suite|Suite|unit|Unit|Box|box)\.?\s*\w+)?\s*,*\s*(?P<city>[\w\s]*),*\s*(?P<state>[A-Z]{2}),*\s+(?P<zipcode>\d{5}(?:-\d{4})?)$"""

    # Create new columns for street address, city, state, and zipcode
    df[["address", "Street Address 2", "City", "State/Region", "Zip/Postal Code"]] = df[str(address_col)].str.extract(pattern)

    df.rename(columns={address_col: "Old Address Column"}, inplace=True)
    
    df.rename(columns={"address": "Street Address 1"}, inplace=True)
    
    # Return the new dataframe
    return df

# Run function
address_df = split_address(raw_address, "Street Address 1")

# Fill null values with an empty string
address_df.fillna(value="", inplace=True)

# Add USA as country to every row
address_df["Country"] = "USA"

address_df.display()

contains_units_df = address_df[address_df["Street Address 1"].str.contains("#|Apt|apt|No\.|no\.|Number|number|Ste\.|ste\.|suite|Suite|unit|Unit|Box|box")]

contains_units_df.display()

# Send address_df dataframe to an Excel file
address_df.to_excel("AddressBookFromPyFinished.xlsx", index=False)