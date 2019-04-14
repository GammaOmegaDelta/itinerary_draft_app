class Api::WishlistController < ApplicationController
  def index
    @wishlists = current_user.wishlists
    @wishlists = @wishlists.where(status: 'added')
    render 'index.json.jbuilder'
  end

  def create
    @wishlist = Wsihlost.new(
      user_id: current_user.id,
      activity_id: params[:activity_id],
      status: "added",
      )
    @wishlist.save
    render 'show.json.jbuilder'
  end
  
  def destroy
    @wishlist
  end
end
