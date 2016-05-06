# Battleship game

Classic game of Battleship:  
https://en.wikipedia.org/wiki/Battleship_%28game%29

### Features covered:

- Both players can use the right side of the game to try hitting on opponent' ships.
- Hits are marked with "red" color.
- Misses are marked with "blue" (water).
- Ship blocks are marked with "grey" color.

### Initial setup (local development)

- `git clone`
- `bundle install`
- `rake db:create db:migrate db:seed`
- `rails s`

### Live app

- Access the homepage and choose a player: https://battleship-demo.herokuapp.com/
- Player 1: https://battleship-demo.herokuapp.com/games/1
- Player 2: https://battleship-demo.herokuapp.com/games/2
