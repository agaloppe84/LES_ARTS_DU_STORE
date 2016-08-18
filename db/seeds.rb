
puts "start seed"


# ------------------------- reservation ------------------------- #

type_one = Type.create!(name: 'moustiquaire')
type_two = Type.create!(name: 'porte de garage')
type_three = Type.create!(name: 'store interieur')
type_four = Type.create!(name: 'store exterieur')

# ------------------------- reservation ------------------------- #




# ------------------------- reservation ------------------------- #

product_one = Product.create!(title: 'one', type: type_one , description: 'test')
product_two = Product.create!(title: 'two', type: type_two , description: 'test')
product_three = Product.create!(title: 'three', type: type_three , description: 'test')
product_four = Product.create!(title: 'four', type: type_four , description: 'test')

# ------------------------- reservation ------------------------- #



puts "end seed"
