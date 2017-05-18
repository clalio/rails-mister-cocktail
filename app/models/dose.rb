class Dose < ApplicationRecord
  CATEGORY = [Ingredient.all]
  belongs_to :cocktail
  belongs_to :ingredient
  validates :cocktail, uniqueness:{scope: :ingredient}
  validates :description, presence: true
  validates :ingredient, inclusion: {in: CATEGORY, allow_nil: false}
end
