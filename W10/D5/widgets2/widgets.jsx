import React from "react";
import ReactDOM from "react-dom";
import Clock from "./frontend/clock";

class Root extends React.Component {
  render() {
    return (
      <div id="root">
        <Clock />
      </div>
    );
  }
}

document.addEventListener("DOMContentLoaded", () => {
  const main = document.querySelector("#main");
  ReactDOM.render(<Root/>, main);
});
