class BirdCount
  def self.last_week
    @ultima_semana = [0, 2, 5, 3, 7, 8, 4]
    @ultima_semana
  end

  def initialize(birds_per_day)
    @birds_per_day = birds_per_day
  end

  def yesterday
    @birds_per_day[-2]
  end

  def total
    total_birds = 0
    @birds_per_day.each {|birds| total_birds += birds}
    total_birds
  end

  def busy_days
    @birds_per_day.count {|birds| birds >= 5}
  end

  def day_without_birds?
    @birds_per_day.any? {|birds| birds == 0}
  end
end
