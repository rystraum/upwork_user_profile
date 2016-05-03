# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

200.times.each do |n|
  o = Option.create(name: n.to_words.parameterize)
  10.times.each do |m|
    o.child_options.create(name: "#{m.to_words.parameterize} of #{o.name}")
  end
end