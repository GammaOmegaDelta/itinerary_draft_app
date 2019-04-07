class Api::ActivitiesController < ApplicationController
  before_action :authenticate_user

  def index
    @activities = current_user.orders
    render 'index.json.jbuilder'
  end

  def create
    wishlist = current_user.wishlist
    wishlist = current_user.where(status: 'added')
  end

  @activity = Activity.new(
    )
end
