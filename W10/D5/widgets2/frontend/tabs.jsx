import React from "react";
import Header from "./header";

export default class Tabs extends React.Component {
  constructor(props) {
    super(props);
    // debugger
    this.state = {
      tabIndex: 0,
    };

    this.updateTabIndex = this.updateTabIndex.bind(this);
  }

  updateTabIndex(index) {
    this.setState({ tabIndex: index });
  }

  render() {
    const currentTab = this.props.collection[this.state.tabIndex];

    return (
      <>
        <h1>Tabs</h1>
        <Header currentTab={currentTab} collection={this.props.collection} updateTabIndex={this.updateTabIndex}/>
        <article>{currentTab.content}</article>
      </>
    );
  }
}