# Python + SQL Dudas and/or Preguntas and/or Notes

# TODO
  - Download Better Comments at work!
# Python
- ~~How do you print range between two numbers?~~
    - ~~print(range(1, 101))~~
- How do you know to import the whole module or just part of it?
  - e.g. ` import datetime` vs. `from datetime import datetime`
    - If I do the first one, `datetime.now()` fails, but with the second one it succeeds.
- How do you know what module something is from?
  - the ? notation can help
- Why do you sometimes have to explicitly call the module name?
  - In situations where you're already using "df" (which is a pandas df) at the beginning it knows it's pandas.
  - Otherwise, you have to be explicit.
  - e.g. ``` df.Edition.value_counts() ``` vs. ```pd.value_counts(df.Edition)```
- Why are there [[]] two sets of brackets in some pd notation?
  - When indexing columns (series) you can only put one at a time, or else you have to call it as a list
  
# SQL
- Identity seed

# Work questions
- These python libraries
  - itertools
  - pyodbc
  - re
  - pprint
  - gc
  - sys
  - pd 
    - .loc
    - .astype
    - .apply
    - e.g.
      - self.df.loc[self.df['JobDate'].astype(str).apply(lambda x: len(x) > 10), 'JobDate'] = self.df['JobDate'].astype(str).str[:10]