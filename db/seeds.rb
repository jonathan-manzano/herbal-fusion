# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create!(name:"johnnyapple", email:"apple@seed.com", password:"rootroot", password_confirmation:"rootroot")
User.create!(name:"Oscar", email:"oscar@ruby.com", password:"rootroot", password_confirmation:"rootroot")
User.create!(name:"Brendan", email:"grainofsalt@js.com", password:"rootroot", password_confirmation:"rootroot")
User.create!(name:"Pariece", email:"speakwithyour@chest.com", password:"rootroot", password_confirmation:"rootroot")
