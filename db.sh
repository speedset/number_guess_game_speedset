#! /bin/bash 
PSQL="psql --username=freecodecamp --dbname=periodic_table -t --no-align -c"
QUERIES=(
CREATE DATABASE number_guess;
\c number_guess
CREATE TABLE players (user_id SERIAL PRIMARY KEY,username VARCHAR(30) NOT NULL UNIQUE)
CREATE TABLE games(game_id SERIAL PRIMARY KEY,user_id INT,number_of_guesses INT,secret_number INT,CONSTRAINT games_user_id_fkey FOREIGN KEY(user_id) REFERENCES players(user_id))
)

for i in ${QUERIES[@]};
do
$PSQL "$(echo ${i} | sed -E 's/\|/ /g')"
done

last commit