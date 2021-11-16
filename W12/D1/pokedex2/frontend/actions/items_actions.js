import { applyMiddleware } from 'redux';
import * as APIUtil from '../util/api_util';

export const RECEIVE_POKEMONS_ITEMS = "RECEIVE_POKEMONS_ITEMS"

export const receivePokemonsItems = (items) => ({
  type: RECEIVE_POKEMONS_ITEMS,
  items
})

export const requestPokemonsItems = (pokemonId) => (dispatch) => (
  APIUtil.fetchPokemonsItems(pokemonId)
    .then(items => dispatch(receivePokemonsItems(items)))
)