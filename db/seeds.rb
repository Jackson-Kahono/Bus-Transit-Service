# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

buses = [
  {
    bus_name: "Toxic",
    seater: 40,
    passengers: 40,
    status: "Empty",
    from: "Juja",
    to: "Ruiru",
    time: "8:00am"
  },
  {
    bus_name: "Batman",
    seater: 60,
    passengers: 60,
    status: "Half-empty",
    from: "CBD",
    to: "Thika",
    time: "1:00pm"
  },
  {
    bus_name: "Kingkong",
    seater: 25,
    passengers: 25,
    status: "2 seats",
    from: "KU",
    to: "Juja",
    time: "6:00am"
  },
  {
    bus_name: "Mixtape",
    seater: 70,
    passengers: 69,
    status: "Empty",
    from: "Roysa",
    to: "CBD",
    time: "8:00pm"
  },
  {
    bus_name: "Sugar",
    seater: 10,
    passengers: 10,
    status: "Empty",
    from: "Juja",
    to: "TRM",
    time: "9:00am"
  }
]

puts " ⚡ creating buses...."

buses.each { |bus| Bus.create(bus) }

stations = [
  { station_name: "CBD", fare: 0 },
  { station_name: "allssops", fare: 1 },
  { station_name: "Roysa", fare: 2 },
  { station_name: "Githurai", fare: 3 },
  { station_name: "Ku", fare: 4 },
  { station_name: "Ruiru-bypass", fare: 5 },
  { station_name: "Ruiru", fare: 6 },
  { station_name: "Juja", fare: 7 },
  { station_name: "Juja", fare: 8 },
  { station_name: "Thika", fare: 9 }
]

puts " ⚡ creating stations...."

stations.each { |station| Station.create(station) }
