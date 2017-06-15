class GigsController < ApplicationController

  def search


  end

  def index
    @all_gigs = Gig.all

  end

  def show
    @gig = Gig.find_by(id: params['id'])
    @all_gigs = Gig.all
    # artist = params[:artist]
    artist = "The Strokes"
    # venue = params[:venue]
    venue = "Wiltern Theatre"
    # date = params[:date]
    date = "25-07-2016"
    url = "http://api.setlist.fm/rest/0.1/search/setlists.json?&artistName=#{artist}?&venueName=#{venue}?&date#{date}"
    @setlist = HTTParty.get(url, :headers =>{'Content-Type' => 'application/json'})
  end



  def new
    search = params[:search]
    page = params[:page]
    # city = params[:city]
    # venue = params[:venue]
    url = "http://api.setlist.fm/rest/0.1/search/setlists.json?&artistName=#{search}?&p=#{page}"
    @gigInfo = HTTParty.get(url, :headers =>{'Content-Type' => 'application/json'})
    totalNumResults = @gigInfo["setlists"]["@total"].to_i
    @numberOfPages = (totalNumResults / 20)
    # @gigInfo["setlists"]["@total"]
    # @gigInfo["setlists"]["@itemsPerPage"]
    @gig = Gig.new

  end

  def create
    gig = Gig.create( gig_params )
    gig.user = @current_user
    gig.save
    redirect_to "/gigs/#{gig.id}"
  end

  def edit
    gig = Gig.find_by(id: params['id'])
    gig.update(gig_params)
    gig.save
    redirect_to "/gigs/#{gig.id}"

  end

  def destroy
    gig = Gig.find_by(id: params['id'])
    gig.destroy
    redirect_to "/users/#{@current_user.id}"
  end

  private

  def gig_params
    params.require(:gig).permit(:user_id, :artist, :city, :state, :venue, :date, :songs)
  end
end
