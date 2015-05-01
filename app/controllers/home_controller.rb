class HomeController < ApplicationController
  before_action :load

  def index
  end

  def load_more
  end

  protected

  def load
    @photos = Photo.paginate(per_page: 4, page: params[:page])
  end
end
