require 'csv'

if Animal.count == 0 # table is empty, needs to be seeded
  p 'Aminals table is empty. Seeding now'
  animals = %w(Bear Elephant Tiger Gorilla)
  list = []
  animals.each do |animal|
    # build a list of aminals to be instered en mass a bit later
    list << {description: animal}
  end
  Animal.create list # puts all inserts in a single begin...commit
end

if Accessory .count == 0 # table is empty, needs to be seeded
  p 'Accessories table is empty. Seeding now.'
  accessories = %w(Shoes T-Shirt Tiara Glasses)
  list = []
  accessories.each do |acc|
    list << {description: acc}
  end
  Accessory.create list
end

if Size.count == 0
  p 'Size table empty. seeding now.'
  sizes = %w(all small medium large)
  list = []
  sizes.each do |sz|
    list << {description: sz}
  end
  Size.create list
end

inv_data = CSV.read 'tmp/bbd_inv.csv'
inv_animal = []
inv_access = []

# extract animal inventory
(2..5).each do |i|
  d = inv_data[i]
  inv_animal << d[0,2] # slice first two data points
  inv_access << d[3,3] # slice last three data points
end

(6..9).each do |i|
  d = inv_data[i]
  inv_access << d[3,3]
end



