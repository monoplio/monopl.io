# Model for Properties Table
class Property < ApplicationRecord
  belongs_to :player, optional: true
  belongs_to :property_set
  has_one :tile, as: :board_tile, dependent: :destroy

  def landing_cost
    # This logic needs to be updated once we have rent stages
    # property_rents.find_by(stage: stage, property_id: id)
    if stage.zero?
      price
    elsif stage >= 1
      price * 2
    end
  end
end
