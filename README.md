# chess_simulator

### assumptions:
* pawn always moves only vertically forward. Though a vertically downward direction is possible for the other player, currently simulates single-player moves.
  
### setup:
* Install rvm: `curl -sSL https://get.rvm.io | bash -s stable --ruby`
* Install ruby-3.2.2: `rvm install 3.2.2` 
* Install gems: `bundle install`
* To run specs: `bundle exec rspec specs`
* To run the app: `ruby main.rb`
