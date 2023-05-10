=begin
Write your code for the 'Clock' exercise in this file. Make the tests in
`clock_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/clock` directory.
=end

#cria um relógio a partir do parametro com hora e minuto
class Clock
  def initialize(hora_minuto = { hour: 0, minute: 0 })
    if !hora_minuto.key?(:hour)
      @horas = 0
      @minutos = hora_minuto[:minute]
    elsif !hora_minuto.key?(:minute)
      @horas = hora_minuto[:hour]
      @minutos = 0
    else
      @horas = hora_minuto[:hour]
      @minutos = hora_minuto[:minute]
    end
  end

  def to_s
    format("%02d:%02d", @horas, @minutos)
  end
end
