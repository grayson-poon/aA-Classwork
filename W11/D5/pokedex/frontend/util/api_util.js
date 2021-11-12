const fetchAllPokemon = () => {
  return (
    $.ajax({
      url: '/api/pokemon',
      method: 'GET'
    })
  );
};

export default fetchAllPokemon