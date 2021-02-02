# Service Object for generating Graphql Subscription messages
class GraphqlMessage
  def initialize(message:, object:)
    @message = message
    @object = object
  end

  def call
    OpenStruct.new(message: message, data: object)
  end

  private

  attr_reader :message, :object
end
