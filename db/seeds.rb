# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Project.create!(
  :name => "Punchy",
  :description => "Punch is any amazing product.",
  :funding_goal => 2000,
  :start_date => "22/33/44",
  :end_date => "22/33/22"
  )

Project.create!(
  :name => "Kicky",
  :description => "Kicky is any amazing product.",
  :funding_goal => 4000,
  :start_date => "22/33/44",
  :end_date => "22/33/22"
  )

Project.create!(
  :name => "Lunchy",
  :description => "Lunchy is any amazing product.",
  :funding_goal => 111111000,
  :start_date => "22/33/44",
  :end_date => "22/33/22"
  )

Project.create!(
  :name => "Bunchy",
  :description => "Bunchy is any amazing product.",
  :funding_goal => 15124136000,
  :start_date => "22/33/44",
  :end_date => "22/33/22"
  )