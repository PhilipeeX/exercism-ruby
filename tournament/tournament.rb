=begin
Write your code for the 'Tournament' exercise in this file. Make the tests in
`tournament_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/tournament` directory.
=end

module Tournament
  HEADER = 'Team                           | MP |  W |  D |  L |  P '.freeze
  times_pontos = {
    'Allegoric Alaskans' => {mp: 0, w: 0, d: 0, l: 0, p:0},
    'Blithering Badgers' => {mp: 0, w: 0, d: 0, l: 0, p:0},
    'Courageous Californians' => {mp: 0, w: 0, d: 0, l: 0, p:0},
    'Devastating Donkeys' => {mp: 0, w: 0, d: 0, l: 0, p:0}
  }
  def self.tally(input)
    partidas = input.split(/\n/)
    i = 0
    while i < partidas.size
      partidas[i] = partidas[i].split(';')
      times_pontos["#{partidas[i][0]}"][:mp] += 1
      times_pontos["#{partidas[i][1]}"][:mp] += 1
      case partidas[i][2]
      when 'win'
        times_pontos["#{partidas[i][0]}"][:w] += 1
        times_pontos["#{partidas[i][0]}"][:p] += 3
        times_pontos["#{partidas[i][1]}"][:l] += 1
      when 'loss'
        times_pontos["#{partidas[i][0]}"][:l] += 1
        times_pontos["#{partidas[i][1]}"][:p] += 3
        times_pontos["#{partidas[i][1]}"][:w] += 1
      when 'draw'
        times_pontos["#{partidas[i][0]}"][:p] += 1
        times_pontos["#{partidas[i][0]}"][:d] += 1
        times_pontos["#{partidas[i][1]}"][:p] += 1
        times_pontos["#{partidas[i][1]}"][:d] += 1
      end
      i += 1
    end
    puts HEADER
    
    puts 'TALLY'
  end
end
