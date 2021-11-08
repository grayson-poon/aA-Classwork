import React from "react";

export default class Header extends React.Component {
  render() {
    const selected = this.props.currentTab;
    const titles = this.props.collection.map((sub, idx) => {
      let name = selected === idx ? "selected" : "";

      return (
        <li key={idx}
          className={name}
          onClick={() => this.props.updateTabIndex(idx)}>
          {sub.title}
        </li>
      );
    });

    return <ul>{titles}</ul>;
  }
}
