import React from "react";
import ReactDOM  from "react-dom";
import { Root } from "./components/root";
import { receiveAllPokemon, RECEIVE_ALL_POKEMON } from "./actions/pokemon_actions"
import fetchAllPokemon from "./util/api_util"
import pokemonReducer from "./reducers/pokemon_reducer"

document.addEventListener("DOMContentLoaded", () => {
  ReactDOM.render(<Root />, document.getElementById("main"))
  window.receiveAllPokemon = receiveAllPokemon; 
  window.fetchAllPokemon = fetchAllPokemon; 
  window.pokemonReducer = pokemonReducer; 
});