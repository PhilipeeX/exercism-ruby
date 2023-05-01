=begin
Write your code for the 'Tournament' exercise in this file. Make the tests in
`tournament_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/tournament` directory.
=end
require 'pry-byebug';
module Tournament
  time = 'Team'
  HEADER = "#{time.ljust(31)}| MP |  W |  D |  L |  P\n".freeze
    @@times_pontos = {
      # 'Allegoric Alaskans' => { mp: 0, w: 0, d: 0, l: 0, p:0 },
      # 'Blithering Badgers' => { mp: 0, w: 0, d: 0, l: 0, p:0 },
      # 'Courageous Californians' => { mp: 0, w: 0, d: 0, l: 0, p:0 },
      # 'Devastating Donkeys' => { mp: 0, w: 0, d: 0, l: 0, p:0 }
    }
  # binding.pry
  def self.tally(input)
    @@times_pontos = {}
    partidas = input.split(/\n/)
    i = 0
    while i < partidas.size
      partidas[i] = partidas[i].split(';')
      # binding.pry
      if !@@times_pontos.has_key?(partidas[i][0])
        @@times_pontos[partidas[i][0].to_s] = { mp: 0, w: 0, d: 0, l: 0, p:0 }
      end
      if !@@times_pontos.has_key?(partidas[i][1])
        @@times_pontos[partidas[i][1].to_s] = { mp: 0, w: 0, d: 0, l: 0, p:0 }
      end
      @@times_pontos[partidas[i][0].to_s][:mp] += 1
      @@times_pontos[partidas[i][1].to_s][:mp] += 1
      case partidas[i][2]
      when 'win'
        @@times_pontos[partidas[i][0].to_s][:w] += 1
        @@times_pontos[partidas[i][0].to_s][:p] += 3
        @@times_pontos[partidas[i][1].to_s][:l] += 1
      when 'loss'
        @@times_pontos[partidas[i][0].to_s][:l] += 1
        @@times_pontos[partidas[i][1].to_s][:p] += 3
        @@times_pontos[partidas[i][1].to_s][:w] += 1
      when 'draw'
        @@times_pontos[partidas[i][0].to_s][:p] += 1
        @@times_pontos[partidas[i][0].to_s][:d] += 1
        @@times_pontos[partidas[i][1].to_s][:p] += 1
        @@times_pontos[partidas[i][1].to_s][:d] += 1
      end
      i += 1
    end
    # Ordenar por pontuação(caso empate, será ordem alfabetica)
    @@linhas = []
    @@linhas << HEADER
    if @@times_pontos.size >= 1
      @@times_pontos.sort_by { |chave, valor| valor[:p] }.reverse.each do |time|
        @@linhas << "#{time[0].ljust(31)}|  #{time[1][:mp]} |  #{time[1][:w]} |  #{time[1][:d]} |  #{time[1][:l]} |  #{time[1][:p]}\n"
      end
    end
    # binding.pry
    @@linhas.join.gsub("\t", '     ')
  end
end
