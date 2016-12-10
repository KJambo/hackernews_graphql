class GraphqlQueryController < ApplicationController

  def query
    query_string = params[:query]
    query_variables = params[:variables]
    result = StudySchema.execute(query_string, variables: query_variables)
    render json: result
  end
end
