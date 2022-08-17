class RecipesController < ApplicationController
  before_action :authorize

  # GET '/recipes'
  def index
    byebug
    render json: Recipe.all
  end
end
