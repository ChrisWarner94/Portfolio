# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts 'cleaning database'
Technology.destroy_all

puts 'populating database'

technology_one = Technology.create!(
  name: 'Ruby',
  logo: 'stack/ruby.svg'
)

technology_two = Technology.create!(
  name: 'C#',
  logo: 'stack/cSharp.svg'
)

technology_three = Technology.create!(
  name: 'Javascript',
  logo: 'stack/javascript.svg'
)

technology_four = Technology.create!(
  name: 'HTML5',
  logo: 'stack/html.svg'
)

technology_five = Technology.create!(
  name: 'CSS3',
  logo: 'stack/css.svg'
)

technology_six = Technology.create!(
  name: 'Rails',
  logo: 'stack/rails.svg'
)

technology_seven = Technology.create!(
  name: 'PostgreSQL',
  logo: 'stack/postgresql.svg'
)

technology_eight = Technology.create!(
  name: 'SQLite',
  logo: 'stack/sqlite.svg'
)

technology_nine = Technology.create!(
  name: 'Git',
  logo: 'stack/git.svg'
)

technology_ten = Technology.create!(
  name: 'Github',
  logo: 'stack/github.svg'
)

technology_eleven = Technology.create!(
  name: 'SCSS',
  logo: 'stack/sass.svg'
)

technology_twelve = Technology.create!(
  name: 'Bootstrap',
  logo: 'stack/bootstrap.svg'
)

technology_thirteen = Technology.create!(
  name: 'Heroku',
  logo: 'stack/heroku.svg'
)

puts 'populating finished'
