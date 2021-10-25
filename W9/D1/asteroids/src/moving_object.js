module.exports = MovingObject;

function MovingObject(options) {
  this.pos = options.pos,
  this.vel = options.vel,
  this.radius = options.radius,
  this.color = options.color
}

// const Circle = function (pos, radius, color) {
//   this.posX = pos[0];
//   this.posY = pos[1];
//   this.radius = radius;
//   this.color = color;
// };

MovingObject.prototype.draw = function(ctx){
    ctx.fillStyle = this.color;
    ctx.beginPath();



    ctx.arc(
      this.pos[0],
      this.pos[1],
      this.radius,
      0,
      2 * Math.PI,
      true
    );

    ctx.fill()
}


// MovingObject.prototype.draw = function (ctx) {
//   return new Circle(ctx.arc(this.posX, this.posY, this.radius, 0, 2 * Math.PI, true));
//   ctx.fillStyle = this.color;
// }



  // const canvas = document.getElementById('mycanvas');
  // const ctx = canvas.getContext('2d');
  
  // canvas.width = 500;
  // canvas.height = 500;

  // ctx.fillStyle = 'red';
  // ctx.fillRect(200, 255, 300, 255);

  // ctx.beginPath();
  // ctx.arc(250, 250, 50, 0, 2 * Math.PI, true);
  // ctx.strokeStyle = "green";
  // ctx.lineWidth = 10;
  // ctx.stroke();
  // ctx.fillStyle = "blue";
  // ctx.fill();
// });