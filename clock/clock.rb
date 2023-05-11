=begin
Write your code for the 'Clock' exercise in this file. Make the tests in
`clock_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/clock` directory.
=end

#cria um relógio a partir do parametro com hora e minuto
class Clock
  def initialize(hora_minuto)
    # require 'pry-byebug'; binding.pry
    @horas = hora_minuto.fetch(:hour, 0)
    @minutos = hora_minuto.fetch(:minute, 0)
  end

  def to_s
    if @horas < 0 || @minutos < 0
      if @minutos < 0
        horas_negativas = -1
        if @minutos < -60
          horas_negativas += -(@minutos.abs / 60.0).floor
          @minutos = @minutos % 60
        else
          @minutos = 60 - @minutos.abs
        end
        if (@horas+horas_negativas) < 0
          if (@horas + horas_negativas) < -24
            @horas = 24 - ((@horas + horas_negativas) % 24)
          else
            @horas = 24 - (@horas + horas_negativas).abs
          end
        else
          @horas += horas_negativas
        end
      else
        @horas = @horas % 24
      end
    else
      if @minutos >= 60
        @horas += @minutos / 60
        @minutos = @minutos % 60
      end
      if @horas >= 24
        @horas = @horas % 24
      end
    end
    format("%02d:%02d", @horas, @minutos)
  end
end
