# PythonSQL Dudas and/or Preguntas

# Python
- How do you print range between two numbers?
    -print(range(1, 101))
- How do you know to import the whole module or just part of it?
  - e.g. ` import datetime` vs. `from datetime import datetime`
    - If I do the first one, `datetime.now()` fails, but with the second one it succeeds.
  
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