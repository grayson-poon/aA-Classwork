import React from "react";
import ReactDOM from "react-dom";

import Clock from "./frontend/clock";
import Tabs from "./frontend/tabs";
import Weather from "./frontend/weather";

const Root = () => {
  const collection = [
    {title: "title1", content: "content1"},
    {title: "title2", content: "content2"},
    {title: "title3", content: "content3"},
  ];

  return (
    <div id="root">
      <Clock />
      <Tabs collection={collection}/>
      <Weather />
    </div>
  );
}

document.addEventListener("DOMContentLoaded", () => {
  const main = document.querySelector("#main");
  ReactDOM.render(<Root />, main);
});
