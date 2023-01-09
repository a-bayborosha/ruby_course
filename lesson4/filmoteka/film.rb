class Film

  def initialize(director)
    @director = director
    @film_name = []
  end


  # def film_name
  #   return @film_name
  # end
  # def director
  #   return @director
  # end

  attr_accessor :director, :film_name
end
