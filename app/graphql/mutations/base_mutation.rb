module Mutations
  # All Mutations will inherit from BaseMutation
  class BaseMutation < GraphQL::Schema::Mutation
    null false # I dont want this in each mutation ...
  end
end