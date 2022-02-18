# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

ConsortiumPlan.create([
  {
    name: "Vou de Honda",
    person_count: 650,
    installments: 25
  }, {
    name: "Conquista",
    person_count: 960,
    installments: 60
  },
  {
    name: "Mega Fácil",
    person_count: 936,
    installments: 72
  }, {
    name: "Mega Fácil",
    person_count: 780,
    installments: 60
  }, {
    name: "Mega Fácil",
    person_count: 650,
    installments: 50
  }, {
    name: "Super Legal",
    person_count: 432,
    installments: 36
  }, {
    name: "Super Legal",
    person_count: 600,
    installments: 50
  }, {
    name: "Super Legal",
    person_count: 720,
    installments: 60
  }
])