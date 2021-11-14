import React from "react"

class PokemonIndex extends React.Component{
  constructor(props){
    super(props)
  }

  componentDidMount(){
    this.props.requestAllPokemon()
  }

  render(){
    const index = this.props.pokemon.map((pokemon, index) => {
      <li> {pokemon.name}
        <img src={pokemon.image_url}>
        </img>
       </li>
    })
    return (<div> {index}</div>)
  }
}

export default PokemonIndex;