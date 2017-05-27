class StaticPagesController < ApplicationController

  def home

  end

  def photos
    render :home
  end

end
