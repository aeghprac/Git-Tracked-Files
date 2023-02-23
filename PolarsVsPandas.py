import polars as pl
import pandas as pd
from datetime import datetime
from datetime import timedelta

print("-"*60)
# Set csv path
csv_path = "../_DATASETS!/Census2020 Data/Texas_TX.csv"

# Print the current time at start of polars import
start_polars = pd.Timestamp.now()
print(f"Polars started import at: {start_polars}")

# Import huge Texas Census csv file using polars
polars_df = pl.read_csv(csv_path, infer_schema_length=100000, low_memory=False)

# Print when polars finished and how long it took compared to start_polars
end_polars = pd.Timestamp.now()
print(f"Polars finished import of 1.01 GB Texas census data csv at: {end_polars}, which took {end_polars - start_polars}")
print("-"*60)

# Import huge Texas Census csv file using pandas
start_pandas = pd.Timestamp.now()
print(f"Pandas started import at: {start_pandas}")

# Import huge Texas Census csv file using pandas
pandas_df = pd.read_csv(csv_path, low_memory=False)

# Print the current datetime
end_pandas = pd.Timestamp.now()
print(f"Pandas finished import of same file at: {end_pandas}, which took {end_pandas - start_pandas}")
print("-"*60)


# Print comparison of polars and pandas import times in seconds using timedelta
print(f"Polars took {end_polars - start_polars} seconds to import the Texas census data csv file, while pandas took {end_pandas - start_pandas} seconds.")
print(f"Polars was {end_pandas - start_pandas - (end_polars - start_polars)} seconds faster than pandas.")
print(f"Whoa... that's a {round((end_pandas - start_pandas - (end_polars - start_polars)) / (end_pandas - start_pandas) * 100, 2)}% speed increase.")