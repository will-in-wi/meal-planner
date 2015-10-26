json.array!(@ingredients) do |ingredient|
  json.extract! ingredient, :id, :dish_id, :food_id, :amount, :unit_of_measure
  json.url ingredient_url(ingredient, format: :json)
end
