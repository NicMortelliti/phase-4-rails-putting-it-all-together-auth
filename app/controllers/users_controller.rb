class UsersController < ApplicationController
  before_action :authorize
  rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response

  # POST '/signup'
  def create
    user = User.create!(user_params)
    session[:user_id] = user.id
    render json: user, status: :created
  end

  private

  def user_params
    params.permit(:username, :password, :password_confirmation, :image_url, :bio, :user)
  end

  def authorize
    return render json: { error: 'Not authorized' }, status: :unauthorized unless session.include? :user_id
  end
  def render_unprocessable_entity_response(invalid)
    render json: { errors: invalid.record.errors }, status: :unprocessable_entity
  end
end
