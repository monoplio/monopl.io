require 'rails_helper'

RSpec.describe Player, type: :model do
  let(:player) { build(:player) }

  describe 'Player Attribute Validations' do
    let(:result) { player.valid? }

    it 'valid player' do
      expect(result).to(be(true))
    end
  end
end
