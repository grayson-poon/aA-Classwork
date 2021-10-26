module.exports = Game;

function Game() {
  this.asteroids = [];

  this.addAsteroids();
}

Game.DIM_X = 500;

Game.DIM_Y = 500;

Game.NUM_ASTEROIDS = 5;

Game.prototype.addAsteroids = function() {
  let counter = 0;

  while (counter < Game.NUM_ASTEROIDS) {
    this.asteroids.push(new Asteroid(this.randomPosition()))
    counter += 1;
  }
}

Game.prototype.randomPosition = function() {
  let posX = Math.random() * Game.DIM_X;
  let posY = Math.random() * Game.DIM_Y;
  return [posX, posY];
}

Game.prototype.draw = function(ctx) {
  ctx.clearRect(0, 0, Game.DIM_X, Game.DIM_Y);

  this.asteroids.forEach(function(asteroid) {
    asteroid.draw(ctx);
  });
}

Game.prototype.moveObjects = function() {
  this.asteroids.forEach(function(asteroid) {
    asteroid.move();
  });
}
