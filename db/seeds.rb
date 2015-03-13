# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

current_date = Time.now

Project.create!(
  :name => "Punchy",
  :description => "Punch is any amazing product.",
  :funding_goal => 2000,
  :start_date => current_date,
  :end_date => current_date
  )

Project.create!(
  :name => "Kicky",
  :description => "Kicky is any amazing product.",
  :funding_goal => 4000,
  :start_date => current_date,
  :end_date => current_date
  )

Project.create!(
  :name => "Lunchy",
  :description => "Lunchy is any amazing product.",
  :funding_goal => 111111000,
  :start_date => current_date,
  :end_date => current_date
  )

Project.create!(
  :name => "Bunchy",
  :description => "Bunchy is any amazing product.",
  :funding_goal => 15124,
  :start_date => current_date,
  :end_date => current_date
  )