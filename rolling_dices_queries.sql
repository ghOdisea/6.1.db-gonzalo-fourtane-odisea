USE rolling_dices;

/* GET/players  Listar todos los jugadores + ranking */
SELECT  
    id as Player_ID,
    name as Player_Name, 
    (victories * 100 / ( totalGames )) as Success_Rate
FROM player;

/* GET/games/:{id} Listar todos los juegos de un jugador */
/* SELECT DISTINCT
    p.name as Player_name,
    g.dice1 as First_dice,
    g.dice2 as Second_dice,
    r.score as Game_result
FROM game g 
INNER JOIN player p
    ON p.id = g.id_player
INNER JOIN ranking r
    ON g.id = r.id_game
WHERE p.id = 1; */

/* GET/ranking      Mostrar ranking de jugadores con "SuccessRate" y "SuccessRate_all" */

/* SuccessRate */
SELECT 
    p.name as Player_name,
    g.score as Game_result,
    g.id_game as Game_id,
    p.totalGames as Games_played,
    (p.victories * 100 / ( p.totalGames )) as Success_Rate
FROM game g
INNER JOIN player p 
    ON p.id = r.id_player
ORDER BY p.victories DESC;

/* GET/ranking/loser    Mostrar el jugador con menor porcentaje de éxito */
SELECT 
    id as Player_ID,
    name as Player_name,
    (victories * 100 / ( totalGames )) as Success_Rate
FROM player
ORDER BY victories ASC
LIMIT 1;

/* GET/ranking/winner    Mostrar el jugador con mayor porcentaje de éxito */
SELECT 
    id as Player_ID,
    name as Player_name,
    (victories * 100 / ( totalGames )) as Success_Rate
FROM player
ORDER BY victories DESC
LIMIT 1;