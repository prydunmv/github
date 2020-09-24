class UsersController < ApplicationController
  def show
    search_term = params['q'].capitalize

    response = RestClient.get "https://api.github.com/users/#{search_term}"

    @object = JSON.parse response, object_class: OpenStruct

    responses = RestClient.get "https://api.github.com/users/#{search_term}/repos"

    @repos  = JSON.parse responses, object_class: OpenStruct
  end
end
