const MovingObject = require("./moving_object");
const { inherits } = require("./util");

function Asteroid(pos, color = "red", radius = 20) {
  // this.pos = 
  this.vel = function findVel(Math.random(0.2) * 100)
  // this.color = 
}

inherits(Asteroid, MovingObject);