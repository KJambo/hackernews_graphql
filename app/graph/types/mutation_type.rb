MutationType = GraphQL::ObjectType.define do
  name 'Mutation'

  field :createUser, field: CreateUserMutation.field
end