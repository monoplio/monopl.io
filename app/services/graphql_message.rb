# Service Object for generating Graphql Subscription messages
class GraphqlMessage
  def initialize(message:, data:)
    @message = message
    @data = data
  end

  def call
    OpenStruct.new(message: message, data: data)
  end

  private

  attr_reader :message, :data
end
