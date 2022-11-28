import pandas as pd

start_xray = xray.copy()
start_xray['StartDate'] = xray['StartDate'].shift(-1)
start_xray = start_xray.loc[start_xray['AircraftStatus'].isin(['BX0', 'VF0'])][['Buno', 'StartDate']]
start_xray['Buno'] = start_xray['Buno'].astype(str)
