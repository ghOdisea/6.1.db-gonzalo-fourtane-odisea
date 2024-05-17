DROP DATABASE IF EXISTS rolling_dices;
CREATE DATABASE rolling_dices;
USE rolling_dices;

CREATE TABLE player(
	id INT NOT NULL AUTO_INCREMENT,
    name varchar(60) NOT NULL,
    victories INT NOT NULL,
    registrationDate DATE NOT NULL,
    totalGames INT,
    PRIMARY KEY (id)
);

CREATE TABLE game(
	id INT NOT NULL AUTO_INCREMENT,
    id_player INT NOT NULL,
    dice1 INT NOT NULL,
    dice2 INT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (id_player) REFERENCES player(id)
);

CREATE TABLE ranking(
	id INT NOT NULL AUTO_INCREMENT,
    id_game INT NOT NULL,
    id_player INT NOT NULL,
    score INT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (id_game) REFERENCES game(id),
    FOREIGN KEY (id_player) REFERENCES player(id)
);
