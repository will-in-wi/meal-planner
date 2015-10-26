# == Schema Information
#
# Table name: ingredients
#
#  id              :integer          not null, primary key
#  dish_id         :integer
#  food_id         :integer
#  amount          :float(24)
#  unit_of_measure :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

# The relationship between foods.
class Ingredient < ActiveRecord::Base
  belongs_to :food
  belongs_to :dish, class_name: 'Food', foreign_key: 'dish_id'
end
