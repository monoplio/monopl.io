# Model for Properties Table
class Property < ApplicationRecord
  belongs_to :player, optional: true
  belongs_to :property_set
  has_one :tile, as: :board_tile, dependent: :destroy
  has_many :property_rents

  def landing_cost
    # Needs logic for rail roads which work differently due to the stage being dependant on ownership
    unless property_rents.empty?
      property_rents.find_by(stage: stage).rent
    end
  end
end
