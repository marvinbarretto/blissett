module CountriesHelper

  def places_array
    
    [
    @places.each do |place|
      return "#{place.lat}" , "#{place.lon}"
    end
    ]
  end

end
