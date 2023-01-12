# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

buses = [
    {
        bus_name:"Toxic",seater:40,passengers:40,status:"Empty",from:"CBD",to:"Alssops",time:"8:00am"
    },
    {
        bus_name:"Batman",seater:60,passengers:60,status:"Half-empty",from:"CBD",to:"Juja",time:"1:00pm"
    },
    {
        bus_name:"Kingkong",seater:25,passengers:25,status:"2 seats",from:"KU",to:"Juja",time:"6:00am"
    },
    {
        bus_name:"Mixtape",seater:70,passengers:69,status:"Empty",from:"Juja",to:"GCM",time:"8:00pm"
    },
    {
        bus_name:"Sugar",seater:10,passengers:10,status:"Empty",from:"CBD",to:"Thika",time:"9:00am"
    },

]

puts " ⚡ creating buses...."

buses.each {|bus| Bus.create(bus)}

stations = [

{
    station_name: "CBD - Alssops", fare:30
},
{
    station_name: "CBD - Juja", fare:50
},
{
    station_name: "KU - Juja", fare:20
},
{
    station_name: "Juja - GCM", fare:40
},
{
    station_name: "CBD - Thika", fare:50
},
{
    station_name: "CBD - Thika", fare:100
},
]

puts " ⚡ creating stations...."

stations.each {|station| Station.create(station)}