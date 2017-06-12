class GigsController < ApplicationController

  def search
    search = params[:search]
    page = 1
    # venue = "Crystal"
    # year = "2017"
    # city = "Portland"
    url = "http://api.setlist.fm/rest/0.1/search/setlists.json?&artistName=#{search}?&p=#{page}"
    @gigInfo = HTTParty.get(url, :headers =>{'Content-Type' => 'application/json'})
    # @totalNumResults = @gigInfo["setlists"]["@total"].to_i
    # @numberOfPages = (@totalNumResults / 20)

    # @gigInfo["setlists"]["@total"]
    # @gigInfo["setlists"]["@itemsPerPage"]

  end

  def index
    @all_gigs = Gig.all

  end

  def show
    @gig = Gig.find_by(id: params['id'])
  end

  def new
    @gig = Gig.new
  end

  def create
    gig = Gig.create( gig_params)
    gig.user = @current_user
    gig.save
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
    redirect_to "/gigs"
  end

  private

  def gig_params
    params.require(:gig).permit(:user_id, :artist, :city, :state, :venue, :date, :songs)
  end
end
