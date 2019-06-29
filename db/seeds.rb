# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Vehicle.create([{ vehicle_name: 'AB-1234' }, { vehicle_name: 'CD-5678' }, { vehicle_name: 'EF-9101' }])
Waypoint.create([{ latitude: '-33.444592', longitude: '-70.656028', sent_at: '2019-06-24 01:11:00 UTC', vehicle_id: 1}, 
{ latitude: '-33.408911', longitude: '-70.568381', sent_at: '2019-06-25 20:04:00 UTC', vehicle_id: 2}, 
{ latitude: '-33.419978', longitude: '-70.612986', sent_at: '2019-06-28 23:30:00 UTC', vehicle_id: 3}])