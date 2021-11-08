import React from "react";

export default class Tabs extends React.Component {
  constructor(props) {
    super(props);
    // debugger
    this.state = {
      tabIndex: 0,
    };
  }

  render() {
    return (
      <>
        <h1>{this.props.title}</h1>
        <article>{this.props.content}</article>
      </>
    );
  }
}