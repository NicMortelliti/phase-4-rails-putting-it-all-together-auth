class RecipesController < ApplicationController
  before_action :authorize

  # GET '/recipes'
  def index
    render json: Recipe.all
  end
end
