json.set! "pokemon" do 
  json.set! @pokemon.id do
    json.id @pokemon.id
    json.name @pokemon.name
    json.attack @pokemon.attack
    json.defense @pokemon.defense
    json.poke_type @pokemon.poke_type
    json.image_url @pokemon.image_url
  end
end

json.set! "moves" do 
  @pokemon.moves do |move|
    json.set! move.move_id do 
      json.id move.move_id
      json.name move.name 
    end
  end
end

json.set! "items" do 
  @pokemon.items do |item|
    json.set! @pokemon.id do 
      json.id item.id 
      json.name item.name 
      json.price item.price
      json.happiness item.happiness
      json.image_url item.image_url
    end
  end
end