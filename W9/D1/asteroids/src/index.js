console.log('Webpack is working')

const MovingObject = require("./moving_object.js");
window.MovingObject = MovingObject;

const Util = require("./util.js");

document.addEventListener("DOMContentLoaded", function () {
  const canvas = document.getElementById('game-canvas');
  const ctx = canvas.getContext('2d');

  canvas.width = 500;
  canvas.height = 500;

  let test = new MovingObject({pos: [50, 50], vel: [100, 100], radius: 20, color: 'red'});
  test.draw(ctx);

});