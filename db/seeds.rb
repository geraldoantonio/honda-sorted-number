# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

ConsortiumPlan.create([
  { name: "Vou de Honda", person_count: 312, installments: 12 },
  { name: "Vou de Honda", person_count: 650, installments: 25 },
  { name: "Vou de Honda", person_count: 960, installments: 48 },
  { name: "Vou de Honda", person_count: 960, installments: 80 },
  { name: "Conquista", person_count: 936, installments: 36 },
  { name: "Conquista", person_count: 960, installments: 60 },
  { name: "Mega Fácil", person_count: 936, installments: 72 },
  { name: "Mega Fácil", person_count: 780, installments: 60 },
  { name: "Mega Fácil",  person_count: 650,  installments: 50 },
  { name: "Super Legal", person_count: 432, installments: 36 },
  { name: "Super Legal", person_count: 600, installments: 50 },
  { name: "Super Legal", person_count: 720, installments: 60 },
  { name: "Super Legal", person_count: 864, installments: 72 },
  { name: "Normal", person_count: 48, installments: 12},
  { name: "Normal", person_count: 100, installments: 25},
  { name: "Normal", person_count: 144, installments: 36},
  { name: "Normal", person_count: 200, installments: 50},
  { name: "Legal", person_count: 144,  installments: 36},
  { name: "Legal", person_count: 200,  installments: 50},
  { name: "Legal", person_count: 720,  installments: 60},
  { name: "Legal", person_count: 864,  installments: 72},
  { name: "Multichances", person_count: 936, installments: 36},
  { name: "Multichances", person_count: 960, installments: 60},
  { name: "Especial", person_count: 504, installments: 72},
  { name: "Scooter", person_count: 540, installments: 36},
  { name: "Scooter", person_count: 720, installments: 60},
  { name: "TRX e CRF", person_count: 180, installments: 60}
])

FederalResult.create([
  {concurse: 5639, date: Date.new(2022, 2, 16), result: 49005},
  {concurse: 5638, date: Date.new(2020, 2, 12), result: 57951},
  {concurse: 5637, date: Date.new(2020, 2, 9), result: 23992},
  {concurse: 5636, date: Date.new(2020, 2, 5), result: 11226},
  {concurse: 5635, date: Date.new(2020, 2, 2), result: 59260},
  {concurse: 5634, date: Date.new(2020, 1, 29), result: 8107},
  {concurse: 5633, date: Date.new(2020, 1, 26), result: 96915},
  {concurse: 5632, date: Date.new(2020, 1, 22), result: 85987},
  {concurse: 5631, date: Date.new(2020, 1, 19), result: 05146},
  {concurse: 5630, date: Date.new(2020, 1, 15), result: 32255},
  {concurse: 5629, date: Date.new(2020, 1, 12), result: 84241},
  {concurse: 5628, date: Date.new(2020, 1, 8), result: 99210},
  {concurse: 5627, date: Date.new(2020, 1, 5), result: 32235}
])