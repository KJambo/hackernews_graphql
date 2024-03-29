Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  if Rails.env.development?
    mount GraphiQL::Rails::Engine, at: "/graphiql", graphql_path: "/queries"
  end

  root to: redirect("/graphiql")

  post '/queries', to: 'graphql_query#query'
end
