class ClubsController < ApplicationController
  def index
    @clubs = Club.find(:all)
  end

  def new
    @club = Club.new
    @countries = Country.find(:all)
    # @places = Place.where(:country_id => "@countries")

  end

  def edit
    @club = Club.find(params[:id])
  end

  def create
    @club = Club.new(club_params)
    if @club.save
      flash[:success] = "success"
      redirect_to @club
    else
      render 'new'
    end
  end

  def show
    @club = Club.find(params[:id])

    @people = Person.find(:all)

    @people = Person.where(:place_id => @places)

  end


  def destroy
  end

  def update
  end

  private

    def club_params
      params.require(:club).permit(:name, :badge_url, :place_id, :country_id, :colour_hex)
    end
end
