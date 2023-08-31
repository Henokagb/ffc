#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.
if [[ $($PSQL "TRUNCATE games, teams") == "TRUNCATE TABLE" ]]
then
  echo "games and teams tables cleared up"
fi

cat games.csv | while IFS=',' read YEAR ROUND WINNER OPPONENT WINNER_GOALS OPPONENT_GOALS 
do
  if [[ $YEAR != "year" ]]; then
    #check if team is already into
    #check winner
    WINNER_ID=$($PSQL "SELECT team_id from teams WHERE name='$WINNER'")
    if [[ $WINNER_ID == "" ]]; then
      if [[ $($PSQL "INSERT INTO teams(name) VALUES('$WINNER')") == "INSERT 0 1" ]]; then
        echo "$WINNER inserted in teams table"
        WINNER_ID=$($PSQL "SELECT team_id from teams WHERE name='$WINNER'")
      fi
    fi
    #check opponent
    OPPONENT_ID=$($PSQL "SELECT team_id from teams WHERE name='$OPPONENT'")
    if [[ $OPPONENT_ID == "" ]]; then
      if [[ $($PSQL "INSERT INTO teams(name) VALUES('$OPPONENT')") == "INSERT 0 1" ]]; then
        echo "$OPPONENT inserted in teams table"
        OPPONENT_ID=$($PSQL "SELECT team_id from teams WHERE name='$OPPONENT'")
      fi
    fi
    #insert games rows
    $($PSQL "INSERT INTO games(year, round, winner_id, opponent_id, winner_goals, opponent_goals) VALUES($YEAR, '$ROUND', $WINNER_ID, $OPPONENT_ID, $WINNER_GOALS, $OPPONENT_GOALS)")
    echo "game $YEAR - $ROUND - inserted"
  fi
done
