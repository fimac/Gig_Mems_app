class GigsController < ApplicationController

  def search
    @search = params[:search]
  end

  def index
    search = params[:search]
    page = 10
    url = "http://api.setlist.fm/rest/0.1/search/setlists.json?&artistName=#{@search}?&p=#{page}"
    gigInfo = HTTParty.get(url, :headers =>{'Content-Type' => 'application/json'})
      if @gigInfo
        @gigInfo = gigInfo["setlists"]["setlist"]
      end

# @setlists["setlists"]["setlist"]
    # params :search
    # params :p
    # ?&p=2
  end

  def show
  end

  def new
  end

  def edit
  end
end
