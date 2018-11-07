puts 'Cleaning database...'
Restaurant.destroy_all
Review.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name:         'bitch',
    address:      '7 Boundary St, London E2 7JE',
    category:     'chinese',
    phone_number: '01 43 54 23 31'
  },
  {
    name:         "pritza by steve brule, phd",
    address:      '56A Shoreditch High St, London E1 6PQ',
    category:     'chinese',
    phone_number: '55 50 12 50 00'
  }
]

restaurants_attributes.each do |hash|
  Restaurant.create!(hash)
end

puts 'Finished!'
