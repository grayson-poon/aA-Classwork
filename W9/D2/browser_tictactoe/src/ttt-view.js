const Board = require("../ttt_node/board");
const Game = require("../ttt_node/game");

class View {
  constructor(game, el) {
    this.game = game;
    this.el = el;
    this.handleClick = this.handleClick.bind(this)
    this.bindEvents()
  }

  setupBoard() {
    // let test = document.querySelector(".ttt"); just to see
    const ul = document.createElement("ul");

    for (let i = 0; i < 3; i++) {
      for (let j = 0; j < 3; j++) {
        const li = document.createElement("li");
        li.setAttribute("pos", [i, j])
        li.setAttribute("class", "")

        ul.append(li);
      }
    }

    this.el.append(ul);
  }
  
  bindEvents() {
    this.el.addEventListener("click", this.handleClick)

  }

  handleClick(e) {
    let nodeNames = e.target.nodeName 
    if (nodeNames === "LI") {
      this.makeMove(e.target)
    } else {
      alert("NOT VALID MOVE")
    }
  }

  makeMove(square) {
    let pos = square.getAttribute("pos").split(",")
    let a = [parseInt(pos)];
    let b = parseInt(pos[1]);
    let realPos = a.concat(b);
    this.game.playMove(realPos)
    let value = this.game.currentPlayer
    square.innerHTML = value
    console.log(this.game.status)
    square.classList.toggle("clicked")
    if (this.game.isOver()) {
     
    }
    // this.game.board.placeMark(realPos, this.game.currentPlayer)
  }

}

module.exports = View;
