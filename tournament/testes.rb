require 'pp'

times_pontos = {
  'Allegoric Alaskans' => {mp: 0, w: 0, d: 0, l: 0, p:0},
  'Blithering Badgers' => {mp: 0, w: 0, d: 0, l: 0, p:0},
  'Courageous Californians' => {mp: 0, w: 0, d: 0, l: 0, p:0},
  'Devastating Donkeys' => {mp: 0, w: 0, d: 0, l: 0, p:0}
}
input = "Allegoric Alaskans;Blithering Badgers;win
Devastating Donkeys;Courageous Californians;draw
Devastating Donkeys;Allegoric Alaskans;win
Courageous Californians;Blithering Badgers;loss
Blithering Badgers;Devastating Donkeys;loss
Allegoric Alaskans;Courageous Californians;win"
partidas = input.split(/\n/)
i = 0
while i < partidas.size
  partidas[i] = partidas[i].split(';')
  times_pontos["#{partidas[i][0]}"][:mp] += 1
  times_pontos["#{partidas[i][1]}"][:mp] += 1
  if partidas[i][2] == 'win'
    times_pontos["#{partidas[i][0]}"][:w] += 1
    times_pontos["#{partidas[i][0]}"][:p] += 3
    times_pontos["#{partidas[i][1]}"][:l] += 1
  elsif partidas[i][2] == 'loss'
    times_pontos["#{partidas[i][0]}"][:l] += 1
    times_pontos["#{partidas[i][1]}"][:p] += 3
    times_pontos["#{partidas[i][1]}"][:w] += 1
  elsif partidas[i][2] == 'draw'
    times_pontos["#{partidas[i][0]}"][:p] += 1
    times_pontos["#{partidas[i][0]}"][:d] += 1
    times_pontos["#{partidas[i][1]}"][:p] += 1
    times_pontos["#{partidas[i][1]}"][:d] += 1
  end
  i += 1
end


pp times_pontos