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

require 'test_helper'

class IngredientTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
