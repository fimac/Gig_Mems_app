class GigsController < ApplicationController


# Receiving search params from gig index.html.erb page form.
  def index
    search = params[:search]
    page = 1
    url = "http://api.setlist.fm/rest/0.1/search/setlists.json?&artistName=#{search}?&p=#{page}"
    @gigInfo = HTTParty.get(url, :headers =>{'Content-Type' => 'application/json'})
  end

  def show
  end

  def new
  end


  def edit
  end
end
