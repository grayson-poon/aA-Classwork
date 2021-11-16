import { applyMiddleware } from 'redux';
import * as APIUtil from '../util/api_util';

export const RECEIVE_ALL_POKEMON = "RECEIVE_ALL_POKEMON";
export const RECEIVE_POKEMON_INFO = "RECEIVE_POKEMON_INFO";

export const receiveAllPokemon = (pokemon) => ({
  type: RECEIVE_ALL_POKEMON,
  pokemon
})

export const requestAllPokemon = () => (dispatch) => (
  APIUtil.fetchAllPokemon()
    .then(pokemon => dispatch(receiveAllPokemon(pokemon)))
)

export const receivePokemonInfo = (payload) => ({
  type: RECEIVE_POKEMON_INFO,
  payload
});

export const requestPokemon = (pokemonId) => (dispatch) => (
  APIUtil.fetchPokemon(pokemonId)
    .then((payload) => dispatch(receivePokemonInfo(payload)))
)