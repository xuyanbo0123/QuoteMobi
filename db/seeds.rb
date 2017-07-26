# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

load 'db/initialize_cars.rb'
load 'db/update_cars.rb'
load 'db/update_values.rb'
load 'db/update_zipcodes.rb'
load 'db/update_google_geos.rb'

