CreateUserMutation = GraphQL::Relay::Mutation.define do
  name 'CreateUser'


  input_field :name, !types.String
  input_field :password, !types.String
  input_field :email, !types.String

  return_field :user, UserType

  binding.pry


  resolve -> (obj, inputs, ctx) {
    user = User.create(name: inputs[:name], password: inputs[:password], email: inputs[:email])

    {
      user: user
    }
  }
end