class GameChannel < ApplicationCable::Channel
  def subscribed
    game = Game.find(params[:game_id])
    stream_from "game_channel_#{game.id}"
    ActionCable.server.broadcast "game_channel_#{game.id}", game
  rescue ActiveRecord::RecordNotFound
    raise 'ERROR: Game not found'
  end

  def unsubscribed
    raise NotImplementedError
  end
end
