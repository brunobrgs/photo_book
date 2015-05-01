class HomeController < ApplicationController
  before_action :load

  def index
  end

  def load_more
  end

  protected

  def load
    @photos = Photo.page(params[:page]).per(4)
  end
end
