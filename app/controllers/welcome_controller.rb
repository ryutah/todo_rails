class WelcomeController < ApplicationController
  def index
    redirect_to schedules_path
  end
end
