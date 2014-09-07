class RegistrationsController < ApplicationController
  def create
    invite_code = params[:invite_code]
    if invite_code == 'RSVP123'
      super
    else
      redirect_to root_path, :notice => 'Your invitation code is not valid'
    end
  end
end
