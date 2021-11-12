import React from "react";
import ReactDOM  from "react-dom";
import { Root } from "./components/root";
import { receiveAllPokemon } from "./actions/pokemon_actions"
import fetchAllPokemon from "./util/api_util"
import pokemonReducer from "./reducers/pokemon_reducer"
import configureStore from "./store/store";

document.addEventListener("DOMContentLoaded", () => {
  ReactDOM.render(<Root />, document.getElementById("main"))
  window.receiveAllPokemon = receiveAllPokemon; 
  window.fetchAllPokemon = fetchAllPokemon; 
  window.pokemonReducer = pokemonReducer;

  const store = configureStore();

  window.getState = store.getState;
  window.dispatch = store.dispatch;
});