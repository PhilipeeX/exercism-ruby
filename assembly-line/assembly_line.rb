require 'pry-byebug'
class AssemblyLine
  def initialize(speed)
    @speed = speed
  end

  def production_rate_per_hour
    case @speed
    when (1..4)
      return @speed * 221.0
    when (5..8)
      return @speed * 221 * 0.9
    when 9
      return @speed * 221 * 0.8
    when 10
      return @speed * 221 * 0.77
    else
      return "Erro de definição de velocidade"
    end
  end

  def working_items_per_minute
    (self.production_rate_per_hour / 60).to_i
  end
end
