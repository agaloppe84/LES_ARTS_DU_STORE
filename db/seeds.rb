
puts "Création du seed - START"






puts "Création des types de stores - START"

# ------------------------- Création des types de stores ------------------------- #


    moustiquaire =      Type.create!(name: 'moustiquaire')
    porte_de_garage =   Type.create!(name: 'porte de garage')
    store_interieur =   Type.create!(name: 'store interieur')
    store_exterieur =   Type.create!(name: 'store exterieur')
    menuiserie =        Type.create!(name: 'menuiserie')
    pergola =           Type.create!(name: 'pergola')
    volet_roulant =     Type.create!(name: 'volet roulant')


# ------------------------- Création des types de stores ------------------------- #

puts "Création des types de stores - END"








puts "Création des stores - START"

# ------------------------- Création des stores ------------------------- #




    # ---- Création des moustiquaires ---- #
    puts "Création des moustiquaires - START"


        Product.create!(title: 'Mousty 1', type: moustiquaire , description: 'test')
        Product.create!(title: 'Mousty 2', type: moustiquaire , description: 'test')
        Product.create!(title: 'Mousty 3', type: moustiquaire , description: 'test')
        Product.create!(title: 'Mousty 4', type: moustiquaire , description: 'test')
        Product.create!(title: 'Mousty 5', type: moustiquaire , description: 'test')


    puts "Création des moustiquaires - END"
    # ---- Création des moustiquaires ---- #





    # ---- Création des portes de garage ---- #
    puts "Création des portes de garage - START"


        Product.create!(title: 'Porto 1', type: porte_de_garage , description: 'test')
        Product.create!(title: 'Porto 2', type: porte_de_garage , description: 'test')
        Product.create!(title: 'Porto 3', type: porte_de_garage , description: 'test')
        Product.create!(title: 'Porto 4', type: porte_de_garage , description: 'test')
        Product.create!(title: 'Porto 5', type: porte_de_garage , description: 'test')


    puts "Création des portes de garage - END"
    # ---- Création des portes de garage ---- #





    # ---- Création des stores interieurs ---- #
    puts "Création des stores interieurs - START"


        Product.create!(title: 'Inte 1', type: store_interieur , description: 'test')
        Product.create!(title: 'Inte 2', type: store_interieur , description: 'test')
        Product.create!(title: 'Inte 3', type: store_interieur , description: 'test')
        Product.create!(title: 'Inte 4', type: store_interieur , description: 'test')
        Product.create!(title: 'Inte 5', type: store_interieur , description: 'test')


    puts "Création des stores interieurs - END"
    # ---- Création des stores interieurs ---- #





    # ---- Création des stores exterieurs ---- #
    puts "Création des stores exterieurs - START"


        Product.create!(title: 'Exte 1', type: store_exterieur , description: 'test')
        Product.create!(title: 'Exte 2', type: store_exterieur , description: 'test')
        Product.create!(title: 'Exte 3', type: store_exterieur , description: 'test')
        Product.create!(title: 'Exte 4', type: store_exterieur , description: 'test')
        Product.create!(title: 'Exte 5', type: store_exterieur , description: 'test')


    puts "Création des stores exterieurs - END"
    # ---- Création des stores exterieurs ---- #





    # ---- Création des menuiseries ---- #
    puts "Création des menuiseries - START"


        Product.create!(title: 'Menui 1', type: menuiserie , description: 'test')
        Product.create!(title: 'Menui 2', type: menuiserie , description: 'test')
        Product.create!(title: 'Menui 3', type: menuiserie , description: 'test')
        Product.create!(title: 'Menui 4', type: menuiserie , description: 'test')
        Product.create!(title: 'Menui 5', type: menuiserie , description: 'test')


    puts "Création des menuiseries - END"
    # ---- Création des menuiseries ---- #





    # ---- Création des pergolas ---- #
    puts "Création des pergolas - START"


        Product.create!(title: 'Pergo 1', type: pergola , description: 'test')
        Product.create!(title: 'Pergo 2', type: pergola , description: 'test')
        Product.create!(title: 'Pergo 3', type: pergola , description: 'test')
        Product.create!(title: 'Pergo 4', type: pergola , description: 'test')
        Product.create!(title: 'Pergo 5', type: pergola , description: 'test')


    puts "Création des pergolas - END"
    # ---- Création des pergolas ---- #





    # ---- Création des volets roulants ---- #
    puts "Création des volets roulants - START"


        Product.create!(title: 'Volet 1', type: volet_roulant , description: 'test')
        Product.create!(title: 'Volet 2', type: volet_roulant , description: 'test')
        Product.create!(title: 'Volet 3', type: volet_roulant , description: 'test')
        Product.create!(title: 'Volet 4', type: volet_roulant , description: 'test')
        Product.create!(title: 'Volet 5', type: volet_roulant , description: 'test')


    puts "Création des volets roulants - END"
    # ---- Création des volets roulants ---- #




# ------------------------- Création des stores ------------------------- #

puts "Création des stores - END"






puts "Création du seed - END"
