import { RECEIVE_ALL_POKEMON, RECEIVE_POKEMON_INFO } from './../actions/pokemon_actions';


const pokemonReducer = (state = {}, action) => {
  Object.freeze(state);
  let newState = Object.assign({}, state)
  switch (action.type){
    case RECEIVE_ALL_POKEMON:
      return Object.assign({}, action.pokemon, state);
    case RECEIVE_POKEMON_INFO:
      newState[action.payload.pokemon.id] = action.payload.pokemon
      return newState;
    default:
      return state;
  }
}
  
export default pokemonReducer;
