class Human
  def initialize(name, surname, age)
    @name = name
    @surname = surname
    @age = age
  end

  def old_man?
    if @age >= 60
      return 1
    else
      return 0
    end
  end


  def output
    if old_man? == 1
      return "#{@age} - пожилой"
    else
      return "#{@age} - молодой"
    end
  end

  def name_surname
    if old_man?
      return "#{@name} #{@surname}"
    else
      return "#{@name}"
    end
  end

end
