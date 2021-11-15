import React from "react";
import ReactDOM  from "react-dom";
import  Root from "./components/root";
import { receiveAllPokemon, requestAllPokemon } from "./actions/pokemon_actions"
import fetchAllPokemon from "./util/api_util"
import pokemonReducer from "./reducers/pokemon_reducer"
import configureStore from "./store/store";
import selectAllPokemon from "./reducers/selectors";

document.addEventListener("DOMContentLoaded", () => {
  window.receiveAllPokemon = receiveAllPokemon; 
  window.fetchAllPokemon = fetchAllPokemon;
  window.requestAllPokemon = requestAllPokemon;
  window.pokemonReducer = pokemonReducer;
  window.selectAllPokemon = selectAllPokemon;

  const store = configureStore();

  ReactDOM.render(<Root store={store}/>, document.getElementById("main"))

  window.getState = store.getState;
  window.dispatch = store.dispatch;
});