import React from "react";
import Tile from "./tile";

export default class Board extends React.Component {
  constructor(props) {
    super(props);
  }

  render() {
    return (

    );
  }

  getRandomCoords(size) {
    let x = Math.floor(Math.random() * size);
    let y = Math.floor(Math.random() * size);

    return [x, y];
  }

  assembleBoard(size) {
    let count = 0;

    while (count < size) {
      this.getRandomCoords() === new tile if that pos isEmpty
    }
  }

  spotIsEmpty(pos) {
    // board @ pos === undefined ? true : false
  }
}