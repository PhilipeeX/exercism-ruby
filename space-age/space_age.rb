=begin
Write your code for the 'Space Age' exercise in this file. Make the tests in
`space_age_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/space-age` directory.
=end

class SpaceAge
  def initialize(idade_em_segundos)
    @segundos = idade_em_segundos
  end

  def on_earth
    format("%.2f", @segundos / 31557600.00).to_f
  end

  def on_mercury
    format("%.2f", on_earth / 0.2408467).to_f
  end

  def on_venus
    format("%.2f", on_earth / 0.61519726).to_f
  end

  def on_mars
    format("%.2f", on_earth / 1.8808158).to_f
  end

  def on_jupiter
    format("%.2f", on_earth / 11.862615).to_f
  end

  def on_saturn
    format("%.2f", on_earth / 29.447498).to_f
  end

  def on_uranus
    format("%.2f", on_earth / 84.016846).to_f
  end

  def on_neptune
    format("%.2f", on_earth / 164.79132).to_f
  end
end