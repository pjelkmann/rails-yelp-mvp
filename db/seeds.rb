# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name:         'Dishoom',
    address:      '7 Boundary St, London E2 7JE',
    category:  'chinese',
    phone_number: '01 20 35 12 12'
  },
  {
    name:         'Pizza East',
    address:      '56A Shoreditch High St, London E1 6PQ',
    category:  'italian',
    phone_number:  '01 01 52 42 32'
  },
  {
    name:         'Crunhy Choc',
    address:      '25 Red St, Manchester',
    category:  'japanese',
    phone_number:  "012 12 04 424"
  },
  {
    name:         'Time Raue',
    address:      'Rudi-Dutschke-Straße 25, Berlin',
    category:  'french',
    phone_number:  "0 532 231 23"
  },
  {
    name:         "Mohammed Geiler Döner Box",
    address:      'Berlin Mitte',
    category:  'belgian',
    phone_number: '69 69 420 69'
  },

]
Restaurant.create!(restaurants_attributes)
puts 'Finished!'
