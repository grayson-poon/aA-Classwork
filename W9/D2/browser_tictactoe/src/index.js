const View = require("./ttt-view"); // require appropriate file
const Game = require("../ttt_node/game"); // require appropriate file
const Board = require("../ttt_node/board");
// webpack --watch --mode=development

document.addEventListener("DOMContentLoaded", () => {
  const figureClass = document.querySelector(".ttt");

  let game = new Game();
  let test = new View(game, figureClass);

  test.setupBoard();



});


