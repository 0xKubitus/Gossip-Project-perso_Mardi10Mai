class StaticController < ApplicationController
  def contact
  end

  def team
  end

  def welcome
    @name = params[:first_name]
  end



end # fin class StaticController




