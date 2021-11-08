import React from "react";

export default class Tile extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      flipped: false,
      isMine: false,
      numMinesAround: 0
    }
  }

  componentDidMount() {
    // if this.props.isMine = true
    // this.setState({isMine: true})
  }


}