# Service Object for generating Graphql Subscription events
class GraphqlEvent
  def initialize(message:, data:)
    @message = message
    @data = data
    call
  end

  def call
    BoardgameapiSchema.subscriptions.trigger(
      'gameEvents',
      {},
      GraphqlMessage.new(message: message, data: data).call,
      scope: data.id
    )
  end

  private

  attr_reader :message, :data
end
