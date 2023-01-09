class Person
  def initialize(first_name, middle_name, age)

    @first_name = first_name
    @middle_name = middle_name
    @age = age
    @fav_film = nil
  end

  def first_name
    @first_name
  end

  def fav_film
    @fav_film
  end

  def fav_film=(film)
    @fav_film = film
  end
end
