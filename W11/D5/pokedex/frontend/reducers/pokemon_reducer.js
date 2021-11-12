import {receiveAllPokemon, RECEIVE_ALL_POKEMON} from '../actions/pokemon_actions'
import fetchAllPokemon from '../util/api_util';

const pokemonReducer = (state={}, action) => {
  Object.freeze(state)
  let newState = Object.assign({}, state);
  switch(action.type){
    case RECEIVE_ALL_POKEMON:
      //Bad way to do it 
      // fetchAllPokemon().then((res) => Object.assign(newState, res))
    
      return action.pokemon 
    default:
      return state; 
  }
}

export default pokemonReducer; 