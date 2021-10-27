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



const tiles = document.querySelectorAll(".ttt ul li")

// for (let i = 0; i < 3; i++) {
//   for (let j = 0; j < 3; j++) {
//     tiles[i, j].setAttribute("pos", `${[i, j]}`)
//   }
// }


// tiles.forEach(el => {

// })


// tiles.forEach(li => {
//   li.addEventListener("click", handleClick)
// })


// e.preventDefault()
// let ele = e.target;
// ele.classList.toggle(".clicked")
