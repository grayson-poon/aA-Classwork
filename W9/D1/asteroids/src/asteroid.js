const MovingObject = require("./moving_object");
const Util = require("./util");

function Asteroid(position) {
  let options = {
    pos: position,
    vel: Util.randomVec(Math.random(0.2) * 100),
    radius: 20,
    color: 'red'
  }

  return new MovingObject(options);
}

Util.inherits(Asteroid, MovingObject);

module.exports = Asteroid;