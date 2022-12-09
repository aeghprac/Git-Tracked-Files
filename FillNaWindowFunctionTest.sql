/****** Script for SelectTopNRows command from SSMS  ******/
SELECT [play_id]
      ,[game_id]
      ,[old_game_id]
      ,[home_team]
      ,[away_team]
      ,[season_type]
      ,[week]
	  ,[posteam]
	  ,CASE WHEN [posteam] IS NULL
				
				THEN CASE 

					WHEN LAG([posteam]) OVER (PARTITION BY game_id ORDER BY play_id) IS NULL
						THEN LEAD([posteam]) OVER (PARTITION BY game_id  ORDER BY play_id)

					WHEN LEAD([posteam]) OVER (PARTITION BY game_id  ORDER BY play_id) IS NULL
						THEN LAG([posteam]) OVER (PARTITION BY game_id  ORDER BY play_id)
					
					ELSE
						LEAD([posteam]) OVER (PARTITION BY game_id  ORDER BY play_id)
					END
			
			ELSE [posteam]
		END
			AS posteam
				
      
  FROM [NFLPlayByPlay2021].[dbo].[play_by_play_2021$]
  ORDER BY game_id, play_id
