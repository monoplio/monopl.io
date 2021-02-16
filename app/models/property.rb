# Model for Properties Table
class Property < ApplicationRecord
  belongs_to :player, optional: true
  belongs_to :property_set
  has_one :tile, as: :board_tile, dependent: :destroy
  has_many :property_rents, dependent: :destroy

  def landing_cost
    # Needs logic for rail roads which work differently due to the stage being dependant on ownership
    if property_rents.empty?
      0
    else
      rent = property_rents.find_by(stage: stage).rent
      if stage.zero? # and If you own the full set (this needs to be added)
        rent * 2
      else
        rent
      end
    end
  end
end
