console.log('Webpack is working')

const MovingObject = require("./moving_object.js");
window.MovingObject = MovingObject;

const Util = require("./util.js");

document.addEventListener("DOMContentLoaded", function () {
  const canvas = document.getElementById('game-canvas');
  const ctx = canvas.getContext('2d');

  canvas.width = 500;
  canvas.height = 500;

 

  let test = new MovingObject({pos: [5, 5], vel: 10, radius: 20, color: 'red'});
  debugger
  console.log(test);

  test.draw(ctx);

  // ctx.fillStyle = 'red';
  // ctx.fillRect(200, 255, 300, 255);

  // ctx.beginPath();
  // ctx.arc(250, 250, 50, 0, 4 * Math.PI, true);
  // ctx.strokeStyle = "green";
  // ctx.lineWidth = 10;
  // ctx.stroke();
  // ctx.fillStyle = "blue";
  // ctx.fill();
});