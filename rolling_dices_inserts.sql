USE rolling_dices;

INSERT INTO player (name, victories, registrationDate, totalGames)
VALUES
('Player 1', 1, '2023-01-01', 3),
('Player 2', 0, '2023-02-01', 3),
('Player 3', 0, '2023-03-01', 3);

INSERT INTO game (id_player, dice1, dice2)
VALUES
(1, 3, 4),  -- Game 1 for Player 1
(1, 5, 6),  -- Game 2 for Player 1
(1, 2, 3),  -- Game 3 for Player 1
(2, 4, 1),  -- Game 1 for Player 2
(2, 3, 3),  -- Game 2 for Player 2
(2, 6, 2),  -- Game 3 for Player 2
(3, 1, 1),  -- Game 1 for Player 3
(3, 2, 4),  -- Game 2 for Player 3
(3, 5, 5);  -- Game 3 for Player 3

INSERT INTO ranking (id_game, id_player, score)
VALUES
(1, 1, 7),   -- Score for Game 1 for Player 1
(2, 1, 11),  -- Score for Game 2 for Player 1
(3, 1, 5),   -- Score for Game 3 for Player 1
(4, 2, 5),   -- Score for Game 1 for Player 2
(5, 2, 6),   -- Score for Game 2 for Player 2
(6, 2, 8),   -- Score for Game 3 for Player 2
(7, 3, 2),   -- Score for Game 1 for Player 3
(8, 3, 6),   -- Score for Game 2 for Player 3
(9, 3, 10);  -- Score for Game 3 for Player 3
