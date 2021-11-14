import { connect } from 'react-redux'
import selectAllPokemon from '../../reducers/selectors'
import { receiveAllPokemon } from '../../actions/pokemon_actions'
import PokemonIndex from './pokemon_index'

const mapStateToProps = (state) => {
  return {
    pokemon: selectAllPokemon(state)
  }
}

const mapDispatchToProps = (dispatch) => {
  return {
    receivePokemon: (pokemon) => dispatch(receiveAllPokemon(pokemon))
  }
}


connect(mapStateToProps, mapDispatchToProps)(PokemonIndex)