USE rolling_dices;

INSERT INTO player (name, victories, registrationDate, totalGames)
VALUES
('Player 1', 1, '2023-01-01', 3),
('Player 2', 0, '2023-02-01', 3),
('Player 3', 0, '2023-03-01', 3);

INSERT INTO game (id_player, dice1, dice2, score)
VALUES
(1, 3, 4, 7),  -- Game 1 for Player 1
(1, 5, 6, 11),  -- Game 2 for Player 1
(1, 2, 3, 5),  -- Game 3 for Player 1
(2, 4, 1, 5),  -- Game 1 for Player 2
(2, 3, 3, 6),  -- Game 2 for Player 2
(2, 6, 2, 8),  -- Game 3 for Player 2
(3, 1, 1, 2),  -- Game 1 for Player 3
(3, 2, 4, 6),  -- Game 2 for Player 3
(3, 5, 5, 10);  -- Game 3 for Player 3

