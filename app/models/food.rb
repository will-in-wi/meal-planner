# == Schema Information
#
# Table name: foods
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  notes      :text(65535)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

# A dish or food
class Food < ActiveRecord::Base
  has_many :ingredient_dishes, foreign_key: 'food_id', class_name: 'Ingredient'
  has_many :ingredients, foreign_key: 'dish_id'
  has_many :dishes, through: :ingredient_dishes
  has_many :foods, through: :ingredient
end
