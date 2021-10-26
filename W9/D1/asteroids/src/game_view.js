const Game = require("./game")
module.exports = GameView;

function GameView(ctx) {
  const currentGame = new Game();
  this.game = currentGame;
}

GameView.prototype.start = function(ctx) {
  let func = this;
  // let boundFunc = (func.game).bind(func);
  setInterval(func.game.draw.bind(func.game, ctx), 20);
  setInterval(func.game.moveObjects.bind(func.game), 20);
}

//create gameview.step