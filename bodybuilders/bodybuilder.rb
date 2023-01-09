class Bodybuilder
  def initialize()
    @biceps = 0
    @triceps = 0
    @breast = 0
  end

  def pump(muscle)
    case muscle
    when 'biceps'
      @biceps+=1
    when 'triceps'
      @triceps+=1
    when 'breast'
      @breast+=1
    end
  end

  def status
    return "Biceps: #{@biceps}\nTriceps: #{@triceps}\nBreast: #{@breast}"
  end

  def muscle_group
    count = 0
    while count <= 12 do
      num = rand(3)
      if num == 0
        return "biceps"
      elsif num == 1
        return "triceps"
      else
        return "breast"
      end
      count+=1
    end
  end

  end
