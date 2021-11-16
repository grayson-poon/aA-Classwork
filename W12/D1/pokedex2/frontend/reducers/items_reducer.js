import { RECEIVE_POKEMON_INFO } from "../actions/pokemon_actions";

const itemsReducer = (state = {}, action) => {
  Object.freeze(state);
  let newState = Object.assign({}, state)
  switch (action.type){
    case RECEIVE_POKEMON_INFO:
      newState[action.payload.items.id] = action.payload.items;
      return newState;
    default:
      return state;
  }
}