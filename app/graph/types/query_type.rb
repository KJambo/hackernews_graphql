QueryType = GraphQL::ObjectType.define do
  name 'Query'

  field :user do
    type UserType
    argument :id, !types.ID
    resolve -> (obj, args, ctx) { User.find_by_id(args[:id]) }
  end
end