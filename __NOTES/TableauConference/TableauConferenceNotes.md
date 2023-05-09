Refreshing Tableau Extracts with Python
- Dude from Oshkosh B'gosh
- Some very relatable issues - stalled refreshes, DB locks, etc.
- Create a dynamic schedule of updates through the Python/REST API
- Why are we using C#?

5 Core Components
1. Check query
    - Confirm if data is ready with flag/logical check
2. Schedule
3. Python script
    - Have to have lots of error handling
        - What if database is down?
        - Checks every 5 minutes to see if data is there
        - API has a limitation - must be escheduled to every 5 minutes
        - Use Webook in Microsoft teams to give a notification of status
            - This is actually a really good idea. 
4. Windows task Scheduler
5. Tableau Administrator


- tableau-api-lib instead of the "standard" Tableau Python API
    - I wonder why this is
    - https://github.com/divinorum-webb/tableau-api-lib
    