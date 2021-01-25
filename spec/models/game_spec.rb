require 'rails_helper'

RSpec.describe Game, type: :model do
  let(:game) { create(:game) }

  describe 'Game Attribute Validations' do
    let(:result) { game.valid? }

    it 'valid game' do
      expect(result).to(be(true))
    end
  end
end
