import fetchAllPokemon from "../util/api_util";
export const RECEIVE_ALL_POKEMON = "RECEIVE_ALL_POKEMON";
export const REQUEST_ALL_POKEMON = "REQUEST_ALL_POKEMON";

export const receiveAllPokemon = (pokemon) => {
  return {
    type: RECEIVE_ALL_POKEMON,
    pokemon: pokemon
  }
}

// export const requestAllPokemon = () => (dispatch) => {
//   fetchAllPokemon().then((pokemon) =>
//     dispatch(receiveAllPokemon(pokemon))
//   );
// }

export const requestAllPokemon = () => {
  return (dispatch) => {
    fetchAllPokemon().then((pokemon) => dispatch(receiveAllPokemon(pokemon)));
  };
}