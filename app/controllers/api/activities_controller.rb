class Api::ActivitiesController < ApplicationController
  before_action :authenticate_user

  def index
    @activities = current_user.orders
    render 'index.json.jbuilder'
  end

  def create
    wishlist = current_user.wishlist
    wishlist = current_itineraries.where(status: 'added')
  end

  @activity = activity.new(
      user_id: current_user.id,
      )
  @activity.save

  wishlist.each do |wishlist|
    wishlist.activity_id = @activity.id
    wishlist.status = 'completed'
  end
  render 'show.json.jbuilder'
end

def show
  @activity = Activity.find_by(id params[:id])
  render 'show.json.jbuilder'
end
# when a user adds an activity to their wishist, status should include "added", "postponed", "completed". "removed"???