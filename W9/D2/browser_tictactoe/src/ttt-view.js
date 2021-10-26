const Board = require("../ttt_node/board");

class View {
  constructor(game, el) {
    this.game = game;
    this.el = el;
  }

  setupBoard() {
    // let test = document.querySelector(".ttt"); just to see
    const ul = document.createElement("ul");

    for (let i = 0; i < 3; i++) {
      for (let j = 0; j < 3; j++) {
        const li = document.createElement("li");
        ul.append(li);
      }
    }

    this.el.append(ul);
  }
  
  bindEvents() {}

  handleClick(e) {}

  makeMove(square) {}

}

module.exports = View;
