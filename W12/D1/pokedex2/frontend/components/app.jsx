import React from "react";
import { Route } from "react-router";
import PokemonIndexContainer from "./pokemon/pokemon_index_container"

const App = () => (<Route path="/" component={PokemonIndexContainer} />);

export default App;