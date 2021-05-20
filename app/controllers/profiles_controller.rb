class ProfilesController < ApplicationController
  skip_after_action :verify_authorized

  def show
    @myfights = Fight.where(user: current_user)
  end
end
