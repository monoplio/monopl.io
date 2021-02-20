# Model representing a group of properties
class PropertySet < ApplicationRecord
  has_many :properties, dependent: :delete_all

  def can_build
    monopoly && built_evenly && none_mortgaged
  end

  def monopoly
    first_property = properties.first
    if first_property.player_id.nil?
      false
    else
      properties.where(player_id: first_property.player_id).size == properties.size
    end
  end

  def built_evenly
    # this is a function we'll need to implement
    true
  end

  def none_mortgaged
    properties.where(state: 'mortgaged').empty?
  end
end
