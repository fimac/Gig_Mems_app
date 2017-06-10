class GigsController < ApplicationController

  def index
    @setlists = HTTParty.get('http://api.setlist.fm/rest/0.1/search/setlists.json?&artistName=sleater-kinney?&p=2', :headers =>{'Content-Type' => 'application/json'})
    # params :search
    # params :p
  end

  def show
  end

  def new
  end

  def edit
  end
end
