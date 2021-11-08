import React from "react";

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

class Header extends React.Component {
  render() {
    const selected = this.props.currentTab;
    const titles = this.props.collection.map((sub, idx) => {
      let name = (selected === idx ? "selected" : "");

      return (
        <li
        key={idx}
        className={name}
        onClick={() => this.props.updateTabIndex(idx)}>
        {sub.title}
        </li>
      )
    });

    return (
      <ul>
        {titles}
      </ul>
    )
  }
}