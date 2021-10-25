function Game() {
  const DIM_X = 500;
  const DIM_Y = 500;
  const NUM_ASTEROIDS = 5;
  this.asteroids = [];

  this.addAsteroids()
}

Game.prototype.addAsteroids = function() {
  let counter = 0;

  while (counter < NUM_ASTEROIDS) {
    asteroids.push(new Asteroid(this.randomPosition()))
    counter += 1;
  }
}

Game.prototype.randomPosition = function() {
  let posX = Math.random(DIM_X/1000) * 1000;
  let posY = Math.random(DIMY_Y/1000) * 1000;
  return [posX, posY];
}

Game.prototype.draw = function(ctx) {
  ctx.clearRect();

  this.asteroids.forEach(function(asteroid) {
    asteroid.draw(ctx);
  });
}

Game.prototype.moveObjects = function() {
  this.asteroids.forEach(function(asteroid) {
    asteroid.move();
  });
}
