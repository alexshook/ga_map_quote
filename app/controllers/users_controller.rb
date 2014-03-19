class UsersController < ApplicationController

  before_filter :authenticate!, except: :index

  private

  def authenticate!
  redirect_to root_path unless user_signed_in? or admin_signed_in?
  end

end

