class PeopleController < ApplicationController

  def index
    if params[:query].present?
      @results = Person.search(params[:query], page: params[:page])
    else
      @results = Person.all.page params[:page]
    end
    
    @people = Person.find(:all, :order => :last_name)

  end

  def new
    @person = Person.new
    @places = Place.find(:all, :order => :name)
    @countries = Country.find(:all, :order => :name)
  end

  def edit
    @person = Person.find(params[:id])
    @places = Place.find(:all, :order => :name)
    @countries = Country.find(:all, :order => :name)

  end


  def show
    @person = Person.find(params[:id])
    @place  = Place.find(@person.place_id) if @person.place
    @country = @place.country if @person.country
    @stints = @person.stints
    
  end

  def create
    @person = Person.new(person_params)
    if @person.save
      flash[:success] = "success"
      redirect_to @person
    else
      flash[:error] = "error"
      render 'new'
    end
  end

  def update
    @person = Person.find(params[:id])
    if @person.update_attributes(person_params)
      flash[:success] = "success"
      redirect_to @person
    else
      flash[:error] = "error"
      render 'edit'
    end
  end

  def autocomplete
    # render json: Person.search(params[:query], partial: true, autocomplete: true, limit: 10).map(&:first_name)

    
    render json: Person.search(params[:query], partial: true, autocomplete: true, limit: 10).map(&:full_name)


  end


  

  private

    def person_params
      params.require(:person).permit(:first_name, :middle_name, :last_name, :date_of_birth, :place_id, :bio, :photo_url, :photo_caption, :watford_legends_url)
    end

end
