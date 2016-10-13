Type.destroy_all
Brand.destroy_all
Album.destroy_all
Info.destroy_all
Power.destroy_all
Promo.destroy_all
Product.destroy_all










puts "Création du seed - START"






puts "Création des users - START"

# ------------------------- Création des users ------------------------- #


    user1 = User.create!(email: 'agaloppe@me.com', password: '1234soleil')
    user2 = User.create!(email: 'audric.agalops@gmail.com', password: '1234soleil')


# ------------------------- Création des users ------------------------- #
puts "User: " + user1.email + "" + "Password: " + user1.password
puts "User: " + user2.email + "" + "Password: " + user2.password


puts "Création des users - END"






puts "Création des types de stores - START"

# ------------------------- Création des types de stores ------------------------- #


    moustiquaire =      Type.create!(name: 'moustiquaire', color:'#007CB9', plurname: 'Moustiquaires')
    porte_de_garage =   Type.create!(name: 'porte de garage', color:'#007CB9', plurname: 'Portes de garage')
    store_interieur =   Type.create!(name: 'store interieur', color:'#007CB9', plurname: 'Stores intérieurs')
    store_exterieur =   Type.create!(name: 'store exterieur', color:'#007CB9', plurname: 'Stores extérieurs')
    menuiserie =        Type.create!(name: 'menuiserie', color:'#007CB9', plurname: 'Menuiseries')
    pergola =           Type.create!(name: 'pergola', color:'#007CB9', plurname: 'Pergolas')
    volet_roulant =     Type.create!(name: 'volet roulant', color:'#007CB9', plurname: 'Volets roulants')


# ------------------------- Création des types de stores ------------------------- #
puts "Nom de catégorie: " + moustiquaire.name + "" + "Couleur: " + moustiquaire.color
puts "Nom de catégorie: " + porte_de_garage.name + "" + "Couleur: " + porte_de_garage.color
puts "Nom de catégorie: " + store_interieur.name + "" + "Couleur: " + store_interieur.color
puts "Nom de catégorie: " + store_exterieur.name + "" + "Couleur: " + store_exterieur.color
puts "Nom de catégorie: " + menuiserie.name + "" + "Couleur: " + menuiserie.color
puts "Nom de catégorie: " + pergola.name + "" + "Couleur: " + pergola.color
puts "Nom de catégorie: " + volet_roulant.name + "" + "Couleur: " + volet_roulant.color


puts "Création des types de stores - END"





puts "Création des marques - START"

# ------------------------- Création des marques ------------------------- #


    coublanc =      Brand.create!(name: 'coublanc', logo_url: 'http://res.cloudinary.com/agaloppe84/image/upload/v1471805960/v9g44efftzca2auuhelb.jpg')
    luxaflex =      Brand.create!(name: 'luxaflex', logo_url: 'http://res.cloudinary.com/agaloppe84/image/upload/v1471805960/v9g44efftzca2auuhelb.jpg')
    franceferm =    Brand.create!(name: 'france fermetures', logo_url: 'http://res.cloudinary.com/agaloppe84/image/upload/v1471805960/v9g44efftzca2auuhelb.jpg')
    franciaflex =   Brand.create!(name: 'franciaflex', logo_url: 'http://res.cloudinary.com/agaloppe84/image/upload/v1471805960/v9g44efftzca2auuhelb.jpg')



# ------------------------- Création des marques ------------------------- #

puts "Création des marques - END"








puts "Création des stores - START"

# ------------------------- Création des stores ------------------------- #




    # ---- Création des moustiquaires ---- #
    puts "Création des moustiquaires - START"


        mousty01 = Product.create!(title: 'Mousty 1', type: moustiquaire , description: 'test', brand: coublanc , photo_urls:["http://res.cloudinary.com/agaloppe84/image/upload/v1458781059/rkqs4jojhhdptywzampk.jpg"])
        mousty02 = Product.create!(title: 'Mousty 2', type: moustiquaire , description: 'test', brand: coublanc , photo_urls:["http://res.cloudinary.com/agaloppe84/image/upload/v1458781059/rkqs4jojhhdptywzampk.jpg"])
        mousty03 = Product.create!(title: 'Mousty 3', type: moustiquaire , description: 'test', brand: coublanc , photo_urls:["http://res.cloudinary.com/agaloppe84/image/upload/v1458781059/rkqs4jojhhdptywzampk.jpg"])
        mousty04 = Product.create!(title: 'Mousty 4', type: moustiquaire , description: 'test', brand: coublanc , photo_urls:["http://res.cloudinary.com/agaloppe84/image/upload/v1458781059/rkqs4jojhhdptywzampk.jpg"])
        mousty05 = Product.create!(title: 'Mousty 5', type: moustiquaire , description: 'test', brand: coublanc , photo_urls:["http://res.cloudinary.com/agaloppe84/image/upload/v1458781059/rkqs4jojhhdptywzampk.jpg"])


    puts "Création des moustiquaires - END"
    # ---- Création des moustiquaires ---- #





    # ---- Création des portes de garage ---- #
    puts "Création des portes de garage - START"


        porto01 = Product.create!(title: 'Porto 1', type: porte_de_garage , description: 'test', brand: luxaflex , photo_urls:["http://res.cloudinary.com/agaloppe84/image/upload/v1458781059/rkqs4jojhhdptywzampk.jpg"])
        porto02 = Product.create!(title: 'Porto 2', type: porte_de_garage , description: 'test', brand: luxaflex , photo_urls:["http://res.cloudinary.com/agaloppe84/image/upload/v1458781059/rkqs4jojhhdptywzampk.jpg"])
        porto03 = Product.create!(title: 'Porto 3', type: porte_de_garage , description: 'test', brand: luxaflex , photo_urls:["http://res.cloudinary.com/agaloppe84/image/upload/v1458781059/rkqs4jojhhdptywzampk.jpg"])
        porto04 = Product.create!(title: 'Porto 4', type: porte_de_garage , description: 'test', brand: luxaflex , photo_urls:["http://res.cloudinary.com/agaloppe84/image/upload/v1458781059/rkqs4jojhhdptywzampk.jpg"])
        porto05 = Product.create!(title: 'Porto 5', type: porte_de_garage , description: 'test', brand: luxaflex , photo_urls:["http://res.cloudinary.com/agaloppe84/image/upload/v1458781059/rkqs4jojhhdptywzampk.jpg"])


    puts "Création des portes de garage - END"
    # ---- Création des portes de garage ---- #





    # ---- Création des stores interieurs ---- #
    puts "Création des stores interieurs - START"


        inte01 = Product.create!(title: 'Inte 1', type: store_interieur , description: 'test', brand: franciaflex , photo_urls:["http://res.cloudinary.com/agaloppe84/image/upload/v1458781059/rkqs4jojhhdptywzampk.jpg"])
        inte02 = Product.create!(title: 'Inte 2', type: store_interieur , description: 'test', brand: franciaflex , photo_urls:["http://res.cloudinary.com/agaloppe84/image/upload/v1458781059/rkqs4jojhhdptywzampk.jpg"])
        inte03 = Product.create!(title: 'Inte 3', type: store_interieur , description: 'test', brand: franciaflex , photo_urls:["http://res.cloudinary.com/agaloppe84/image/upload/v1458781059/rkqs4jojhhdptywzampk.jpg"])
        inte04 = Product.create!(title: 'Inte 4', type: store_interieur , description: 'test', brand: franciaflex , photo_urls:["http://res.cloudinary.com/agaloppe84/image/upload/v1458781059/rkqs4jojhhdptywzampk.jpg"])
        inte05 = Product.create!(title: 'Inte 5', type: store_interieur , description: 'test', brand: franciaflex , photo_urls:["http://res.cloudinary.com/agaloppe84/image/upload/v1458781059/rkqs4jojhhdptywzampk.jpg"])


    puts "Création des stores interieurs - END"
    # ---- Création des stores interieurs ---- #





    # ---- Création des stores exterieurs ---- #
    puts "Création des stores exterieurs - START"


        exte01 = Product.create!(title: 'Exte 1', type: store_exterieur , description: 'test', brand: coublanc , photo_urls:["http://res.cloudinary.com/agaloppe84/image/upload/v1458781059/rkqs4jojhhdptywzampk.jpg"])
        exte02 = Product.create!(title: 'Exte 2', type: store_exterieur , description: 'test', brand: coublanc , photo_urls:["http://res.cloudinary.com/agaloppe84/image/upload/v1458781059/rkqs4jojhhdptywzampk.jpg"])
        exte03 = Product.create!(title: 'Exte 3', type: store_exterieur , description: 'test', brand: coublanc , photo_urls:["http://res.cloudinary.com/agaloppe84/image/upload/v1458781059/rkqs4jojhhdptywzampk.jpg"])
        exte04 = Product.create!(title: 'Exte 4', type: store_exterieur , description: 'test', brand: coublanc , photo_urls:["http://res.cloudinary.com/agaloppe84/image/upload/v1458781059/rkqs4jojhhdptywzampk.jpg"])
        exte05 = Product.create!(title: 'Exte 5', type: store_exterieur , description: 'test', brand: coublanc , photo_urls:["http://res.cloudinary.com/agaloppe84/image/upload/v1458781059/rkqs4jojhhdptywzampk.jpg"])


    puts "Création des stores exterieurs - END"
    # ---- Création des stores exterieurs ---- #





    # ---- Création des menuiseries ---- #
    puts "Création des menuiseries - START"


        menui01 = Product.create!(title: 'Menui 1', type: menuiserie , description: 'test', brand: coublanc , photo_urls:["http://res.cloudinary.com/agaloppe84/image/upload/v1458781059/rkqs4jojhhdptywzampk.jpg"])
        menui02 = Product.create!(title: 'Menui 2', type: menuiserie , description: 'test', brand: coublanc , photo_urls:["http://res.cloudinary.com/agaloppe84/image/upload/v1458781059/rkqs4jojhhdptywzampk.jpg"])
        menui03 = Product.create!(title: 'Menui 3', type: menuiserie , description: 'test', brand: coublanc , photo_urls:["http://res.cloudinary.com/agaloppe84/image/upload/v1458781059/rkqs4jojhhdptywzampk.jpg"])
        menui04 = Product.create!(title: 'Menui 4', type: menuiserie , description: 'test', brand: coublanc , photo_urls:["http://res.cloudinary.com/agaloppe84/image/upload/v1458781059/rkqs4jojhhdptywzampk.jpg"])
        menui05 = Product.create!(title: 'Menui 5', type: menuiserie , description: 'test', brand: coublanc , photo_urls:["http://res.cloudinary.com/agaloppe84/image/upload/v1458781059/rkqs4jojhhdptywzampk.jpg"])


    puts "Création des menuiseries - END"
    # ---- Création des menuiseries ---- #





    # ---- Création des pergolas ---- #
    puts "Création des pergolas - START"


        pergo01 = Product.create!(title: 'Pergo 1', type: pergola , description: 'test', brand: coublanc , photo_urls:["http://res.cloudinary.com/agaloppe84/image/upload/v1458781059/rkqs4jojhhdptywzampk.jpg"])
        pergo02 = Product.create!(title: 'Pergo 2', type: pergola , description: 'test', brand: coublanc , photo_urls:["http://res.cloudinary.com/agaloppe84/image/upload/v1458781059/rkqs4jojhhdptywzampk.jpg"])
        pergo03 = Product.create!(title: 'Pergo 3', type: pergola , description: 'test', brand: coublanc , photo_urls:["http://res.cloudinary.com/agaloppe84/image/upload/v1458781059/rkqs4jojhhdptywzampk.jpg"])
        pergo04 = Product.create!(title: 'Pergo 4', type: pergola , description: 'test', brand: coublanc , photo_urls:["http://res.cloudinary.com/agaloppe84/image/upload/v1458781059/rkqs4jojhhdptywzampk.jpg"])
        pergo05 = Product.create!(title: 'Pergo 5', type: pergola , description: 'test', brand: coublanc , photo_urls:["http://res.cloudinary.com/agaloppe84/image/upload/v1458781059/rkqs4jojhhdptywzampk.jpg"])


    puts "Création des pergolas - END"
    # ---- Création des pergolas ---- #





    # ---- Création des volets roulants ---- #
    puts "Création des volets roulants - START"


        volet01 = Product.create!(title: 'Volet 1', type: volet_roulant , description: 'test', brand: franceferm , photo_urls:["http://res.cloudinary.com/agaloppe84/image/upload/v1458781059/rkqs4jojhhdptywzampk.jpg"])
        volet02 = Product.create!(title: 'Volet 2', type: volet_roulant , description: 'test', brand: franceferm , photo_urls:["http://res.cloudinary.com/agaloppe84/image/upload/v1458781059/rkqs4jojhhdptywzampk.jpg"])
        volet03 = Product.create!(title: 'Volet 3', type: volet_roulant , description: 'test', brand: franceferm , photo_urls:["http://res.cloudinary.com/agaloppe84/image/upload/v1458781059/rkqs4jojhhdptywzampk.jpg"])
        volet04 = Product.create!(title: 'Volet 4', type: volet_roulant , description: 'test', brand: franceferm , photo_urls:["http://res.cloudinary.com/agaloppe84/image/upload/v1458781059/rkqs4jojhhdptywzampk.jpg"])
        volet05 = Product.create!(title: 'Volet 5', type: volet_roulant , description: 'test', brand: franceferm , photo_urls:["http://res.cloudinary.com/agaloppe84/image/upload/v1458781059/rkqs4jojhhdptywzampk.jpg"])


    puts "Création des volets roulants - END"
    # ---- Création des volets roulants ---- #




# ------------------------- Création des stores ------------------------- #

puts "Création des stores - END"







puts "Création des infos - START"

# ------------------------- INFOS - Moustiquaires ------------------------- #


    Info.create!(title: 'info', content: 'info-test', product: mousty01 , icon_url: 'http://res.cloudinary.com/agaloppe84/image/upload/v1473094164/ni7h3aok9vm0fghuq3jq.svg')
    Info.create!(title: 'info', content: 'info-test', product: mousty02 , icon_url: 'http://res.cloudinary.com/agaloppe84/image/upload/v1473094164/ni7h3aok9vm0fghuq3jq.svg')
    Info.create!(title: 'info', content: 'info-test', product: mousty03 , icon_url: 'http://res.cloudinary.com/agaloppe84/image/upload/v1473094164/ni7h3aok9vm0fghuq3jq.svg')
    Info.create!(title: 'info', content: 'info-test', product: mousty04 , icon_url: 'http://res.cloudinary.com/agaloppe84/image/upload/v1473094164/ni7h3aok9vm0fghuq3jq.svg')
    Info.create!(title: 'info', content: 'info-test', product: mousty05 , icon_url: 'http://res.cloudinary.com/agaloppe84/image/upload/v1473094164/ni7h3aok9vm0fghuq3jq.svg')


# ------------------------- INFOS - Moustiquaires ------------------------- #


# ------------------------- INFOS - Portes de garage ------------------------- #


    Info.create!(title: 'info', content: 'info-test', product: porto01 , icon_url: 'http://res.cloudinary.com/agaloppe84/image/upload/v1473094164/ni7h3aok9vm0fghuq3jq.svg')
    Info.create!(title: 'info', content: 'info-test', product: porto02 , icon_url: 'http://res.cloudinary.com/agaloppe84/image/upload/v1473094164/ni7h3aok9vm0fghuq3jq.svg')
    Info.create!(title: 'info', content: 'info-test', product: porto03 , icon_url: 'http://res.cloudinary.com/agaloppe84/image/upload/v1473094164/ni7h3aok9vm0fghuq3jq.svg')
    Info.create!(title: 'info', content: 'info-test', product: porto04 , icon_url: 'http://res.cloudinary.com/agaloppe84/image/upload/v1473094164/ni7h3aok9vm0fghuq3jq.svg')
    Info.create!(title: 'info', content: 'info-test', product: porto05 , icon_url: 'http://res.cloudinary.com/agaloppe84/image/upload/v1473094164/ni7h3aok9vm0fghuq3jq.svg')


# ------------------------- INFOS - Portes de garage ------------------------- #


# ------------------------- INFOS - Stores intérieurs ------------------------- #


    Info.create!(title: 'info', content: 'info-test', product: inte01 , icon_url: 'http://res.cloudinary.com/agaloppe84/image/upload/v1473094164/ni7h3aok9vm0fghuq3jq.svg')
    Info.create!(title: 'info', content: 'info-test', product: inte02 , icon_url: 'http://res.cloudinary.com/agaloppe84/image/upload/v1473094164/ni7h3aok9vm0fghuq3jq.svg')
    Info.create!(title: 'info', content: 'info-test', product: inte03 , icon_url: 'http://res.cloudinary.com/agaloppe84/image/upload/v1473094164/ni7h3aok9vm0fghuq3jq.svg')
    Info.create!(title: 'info', content: 'info-test', product: inte04 , icon_url: 'http://res.cloudinary.com/agaloppe84/image/upload/v1473094164/ni7h3aok9vm0fghuq3jq.svg')
    Info.create!(title: 'info', content: 'info-test', product: inte05 , icon_url: 'http://res.cloudinary.com/agaloppe84/image/upload/v1473094164/ni7h3aok9vm0fghuq3jq.svg')


# ------------------------- INFOS - Stores intérieurs ------------------------- #



# ------------------------- INFOS - Stores exterieurs ------------------------- #


    Info.create!(title: 'info', content: 'info-test', product: exte01 , icon_url: 'http://res.cloudinary.com/agaloppe84/image/upload/v1473094164/ni7h3aok9vm0fghuq3jq.svg')
    Info.create!(title: 'info', content: 'info-test', product: exte02 , icon_url: 'http://res.cloudinary.com/agaloppe84/image/upload/v1473094164/ni7h3aok9vm0fghuq3jq.svg')
    Info.create!(title: 'info', content: 'info-test', product: exte03 , icon_url: 'http://res.cloudinary.com/agaloppe84/image/upload/v1473094164/ni7h3aok9vm0fghuq3jq.svg')
    Info.create!(title: 'info', content: 'info-test', product: exte04 , icon_url: 'http://res.cloudinary.com/agaloppe84/image/upload/v1473094164/ni7h3aok9vm0fghuq3jq.svg')
    Info.create!(title: 'info', content: 'info-test', product: exte05 , icon_url: 'http://res.cloudinary.com/agaloppe84/image/upload/v1473094164/ni7h3aok9vm0fghuq3jq.svg')


# ------------------------- INFOS - Stores exterieurs ------------------------- #



# ------------------------- INFOS - Menuiseries ------------------------- #


    Info.create!(title: 'info', content: 'info-test', product: menui01 , icon_url: 'http://res.cloudinary.com/agaloppe84/image/upload/v1473094164/ni7h3aok9vm0fghuq3jq.svg')
    Info.create!(title: 'info', content: 'info-test', product: menui02 , icon_url: 'http://res.cloudinary.com/agaloppe84/image/upload/v1473094164/ni7h3aok9vm0fghuq3jq.svg')
    Info.create!(title: 'info', content: 'info-test', product: menui03 , icon_url: 'http://res.cloudinary.com/agaloppe84/image/upload/v1473094164/ni7h3aok9vm0fghuq3jq.svg')
    Info.create!(title: 'info', content: 'info-test', product: menui04 , icon_url: 'http://res.cloudinary.com/agaloppe84/image/upload/v1473094164/ni7h3aok9vm0fghuq3jq.svg')
    Info.create!(title: 'info', content: 'info-test', product: menui05 , icon_url: 'http://res.cloudinary.com/agaloppe84/image/upload/v1473094164/ni7h3aok9vm0fghuq3jq.svg')


# ------------------------- INFOS - Menuiseries ------------------------- #



# ------------------------- INFOS - Pergolas ------------------------- #


    Info.create!(title: 'info', content: 'info-test', product: pergo01 , icon_url: 'http://res.cloudinary.com/agaloppe84/image/upload/v1473094164/ni7h3aok9vm0fghuq3jq.svg')
    Info.create!(title: 'info', content: 'info-test', product: pergo02 , icon_url: 'http://res.cloudinary.com/agaloppe84/image/upload/v1473094164/ni7h3aok9vm0fghuq3jq.svg')
    Info.create!(title: 'info', content: 'info-test', product: pergo03 , icon_url: 'http://res.cloudinary.com/agaloppe84/image/upload/v1473094164/ni7h3aok9vm0fghuq3jq.svg')
    Info.create!(title: 'info', content: 'info-test', product: pergo04 , icon_url: 'http://res.cloudinary.com/agaloppe84/image/upload/v1473094164/ni7h3aok9vm0fghuq3jq.svg')
    Info.create!(title: 'info', content: 'info-test', product: pergo05 , icon_url: 'http://res.cloudinary.com/agaloppe84/image/upload/v1473094164/ni7h3aok9vm0fghuq3jq.svg')


# ------------------------- INFOS - Pergolas ------------------------- #



# ------------------------- INFOS - Volets roulants ------------------------- #


    Info.create!(title: 'info', content: 'info-test', product: volet01 , icon_url: 'http://res.cloudinary.com/agaloppe84/image/upload/v1473094164/ni7h3aok9vm0fghuq3jq.svg')
    Info.create!(title: 'info', content: 'info-test', product: volet02 , icon_url: 'http://res.cloudinary.com/agaloppe84/image/upload/v1473094164/ni7h3aok9vm0fghuq3jq.svg')
    Info.create!(title: 'info', content: 'info-test', product: volet03 , icon_url: 'http://res.cloudinary.com/agaloppe84/image/upload/v1473094164/ni7h3aok9vm0fghuq3jq.svg')
    Info.create!(title: 'info', content: 'info-test', product: volet04 , icon_url: 'http://res.cloudinary.com/agaloppe84/image/upload/v1473094164/ni7h3aok9vm0fghuq3jq.svg')
    Info.create!(title: 'info', content: 'info-test', product: volet05 , icon_url: 'http://res.cloudinary.com/agaloppe84/image/upload/v1473094164/ni7h3aok9vm0fghuq3jq.svg')


# ------------------------- INFOS - Volets roulants ------------------------- #


puts "Création des infos - END"

















puts "Création des pouvoirs - START"

# ------------------------- POUVOIRS - Moustiquaires ------------------------- #


    Power.create!(product: mousty01 , sun: false, rain: false, wind: false, cold: true, hot: false, humidity: true, energysaver: false, taxsaver: false, insects: false, security: false, inside: true, outside: false, certification: false)
    Power.create!(product: mousty02 , sun: false, rain: false, wind: false, cold: true, hot: false, humidity: true, energysaver: false, taxsaver: false, insects: false, security: false, inside: true, outside: false, certification: false)
    Power.create!(product: mousty03 , sun: false, rain: false, wind: false, cold: true, hot: false, humidity: true, energysaver: false, taxsaver: false, insects: false, security: false, inside: true, outside: false, certification: false)
    Power.create!(product: mousty04 , sun: false, rain: false, wind: false, cold: true, hot: false, humidity: true, energysaver: false, taxsaver: false, insects: false, security: false, inside: true, outside: false, certification: false)
    Power.create!(product: mousty05 , sun: false, rain: false, wind: false, cold: true, hot: false, humidity: true, energysaver: false, taxsaver: false, insects: false, security: false, inside: true, outside: false, certification: false)

    puts "Moustiquaires done !!!!!!!!"
# ------------------------- POUVOIRS - Moustiquaires ------------------------- #


# ------------------------- POUVOIRS - Portes de garage ------------------------- #


    Power.create!(product: porto01 , sun: false, rain: false, wind: false, cold: true, hot: false, humidity: true, energysaver: true, taxsaver: true, insects: false, security: true, inside: false, outside: false, certification: false)
    Power.create!(product: porto02 , sun: false, rain: false, wind: false, cold: true, hot: false, humidity: true, energysaver: true, taxsaver: true, insects: false, security: true, inside: false, outside: false, certification: false)
    Power.create!(product: porto03 , sun: false, rain: false, wind: false, cold: true, hot: false, humidity: true, energysaver: true, taxsaver: true, insects: false, security: true, inside: false, outside: false, certification: false)
    Power.create!(product: porto04 , sun: false, rain: false, wind: false, cold: true, hot: false, humidity: true, energysaver: true, taxsaver: true, insects: false, security: true, inside: false, outside: false, certification: false)
    Power.create!(product: porto05 , sun: false, rain: false, wind: false, cold: true, hot: false, humidity: true, energysaver: true, taxsaver: true, insects: false, security: true, inside: false, outside: false, certification: false)


# ------------------------- POUVOIRS - Portes de garage ------------------------- #


# ------------------------- POUVOIRS - Stores intérieurs ------------------------- #


    Power.create!(product: inte01 , sun: true, rain: false, wind: false, cold: true, hot: false, humidity: true, energysaver: true, taxsaver: true, insects: false, security: true, inside: true, outside: false, certification: false)
    Power.create!(product: inte02 , sun: true, rain: false, wind: false, cold: true, hot: false, humidity: true, energysaver: true, taxsaver: true, insects: false, security: true, inside: true, outside: false, certification: false)
    Power.create!(product: inte03 , sun: true, rain: false, wind: false, cold: true, hot: false, humidity: true, energysaver: true, taxsaver: true, insects: false, security: true, inside: true, outside: false, certification: false)
    Power.create!(product: inte04 , sun: true, rain: false, wind: false, cold: true, hot: false, humidity: true, energysaver: true, taxsaver: true, insects: false, security: true, inside: true, outside: false, certification: false)
    Power.create!(product: inte05 , sun: true, rain: false, wind: false, cold: true, hot: false, humidity: true, energysaver: true, taxsaver: true, insects: false, security: true, inside: true, outside: false, certification: false)


# ------------------------- POUVOIRS - Stores intérieurs ------------------------- #



# ------------------------- POUVOIRS - Stores exterieurs ------------------------- #


    Power.create!(product: exte01 , sun: true, rain: false, wind: false, cold: true, hot: false, humidity: true, energysaver: true, taxsaver: true, insects: false, security: true, inside: true, outside: false, certification: false)
    Power.create!(product: exte02 , sun: true, rain: false, wind: false, cold: true, hot: false, humidity: true, energysaver: true, taxsaver: true, insects: false, security: true, inside: true, outside: false, certification: false)
    Power.create!(product: exte03 , sun: true, rain: false, wind: false, cold: true, hot: false, humidity: true, energysaver: true, taxsaver: true, insects: false, security: true, inside: true, outside: false, certification: false)
    Power.create!(product: exte04 , sun: true, rain: false, wind: false, cold: true, hot: false, humidity: true, energysaver: true, taxsaver: true, insects: false, security: true, inside: true, outside: false, certification: false)
    Power.create!(product: exte05 , sun: true, rain: false, wind: false, cold: true, hot: false, humidity: true, energysaver: true, taxsaver: true, insects: false, security: true, inside: true, outside: false, certification: false)


# ------------------------- POUVOIRS - Stores exterieurs ------------------------- #



# ------------------------- POUVOIRS - Menuiseries ------------------------- #


    Power.create!(product: menui01 , sun: true, rain: false, wind: false, cold: true, hot: false, humidity: true, energysaver: true, taxsaver: true, insects: false, security: true, inside: true, outside: false, certification: true)
    Power.create!(product: menui02 , sun: true, rain: false, wind: false, cold: true, hot: false, humidity: true, energysaver: true, taxsaver: true, insects: false, security: true, inside: true, outside: false, certification: true)
    Power.create!(product: menui03 , sun: true, rain: false, wind: false, cold: true, hot: false, humidity: true, energysaver: true, taxsaver: true, insects: false, security: true, inside: true, outside: false, certification: true)
    Power.create!(product: menui04 , sun: true, rain: false, wind: false, cold: true, hot: false, humidity: true, energysaver: true, taxsaver: true, insects: false, security: true, inside: true, outside: false, certification: true)
    Power.create!(product: menui05 , sun: true, rain: false, wind: false, cold: true, hot: false, humidity: true, energysaver: true, taxsaver: true, insects: false, security: true, inside: true, outside: false, certification: true)


# ------------------------- POUVOIRS - Menuiseries ------------------------- #



# ------------------------- POUVOIRS - Pergolas ------------------------- #


    Power.create!(product: pergo01 , sun: true, rain: true, wind: false, cold: true, hot: false, humidity: true, energysaver: true, taxsaver: true, insects: false, security: true, inside: true, outside: false, certification: false)
    Power.create!(product: pergo02 , sun: true, rain: true, wind: false, cold: true, hot: false, humidity: true, energysaver: true, taxsaver: true, insects: false, security: true, inside: true, outside: false, certification: false)
    Power.create!(product: pergo03 , sun: true, rain: true, wind: false, cold: true, hot: false, humidity: true, energysaver: true, taxsaver: true, insects: false, security: true, inside: true, outside: false, certification: false)
    Power.create!(product: pergo04 , sun: true, rain: true, wind: false, cold: true, hot: false, humidity: true, energysaver: true, taxsaver: true, insects: false, security: true, inside: true, outside: false, certification: false)
    Power.create!(product: pergo05 , sun: true, rain: true, wind: false, cold: true, hot: false, humidity: true, energysaver: true, taxsaver: true, insects: false, security: true, inside: true, outside: false, certification: false)


# ------------------------- POUVOIRS - Pergolas ------------------------- #



# ------------------------- POUVOIRS - Volets roulants ------------------------- #


    Power.create!(product: volet01 , sun: true, rain: false, wind: false, cold: true, hot: false, humidity: true, energysaver: true, taxsaver: true, insects: false, security: true, inside: true, outside: false, certification: false)
    Power.create!(product: volet02 , sun: true, rain: false, wind: false, cold: true, hot: false, humidity: true, energysaver: true, taxsaver: true, insects: false, security: true, inside: true, outside: false, certification: false)
    Power.create!(product: volet03 , sun: true, rain: false, wind: false, cold: true, hot: false, humidity: true, energysaver: true, taxsaver: true, insects: false, security: true, inside: true, outside: false, certification: false)
    Power.create!(product: volet04 , sun: true, rain: false, wind: false, cold: true, hot: false, humidity: true, energysaver: true, taxsaver: true, insects: false, security: true, inside: true, outside: false, certification: false)
    Power.create!(product: volet05 , sun: true, rain: false, wind: false, cold: true, hot: false, humidity: true, energysaver: true, taxsaver: true, insects: false, security: true, inside: true, outside: false, certification: false)


# ------------------------- POUVOIRS - Volets roulants ------------------------- #


puts "Création des pouvoirs - END"






























puts "Création des albums - START"

# ------------------------- Création des albums ------------------------- #


    Album.create!(name: 'homepage', type: moustiquaire, photo_urls:["http://res.cloudinary.com/agaloppe84/image/upload/v1472658802/asbzfjhqc7xyspqoolxn.jpg","http://res.cloudinary.com/agaloppe84/image/upload/v1456127547/sample.jpg"])
    Album.create!(name: 'porte de garage', type: porte_de_garage, photo_urls:["http://res.cloudinary.com/agaloppe84/image/upload/v1472658802/asbzfjhqc7xyspqoolxn.jpg","http://res.cloudinary.com/agaloppe84/image/upload/v1456127547/sample.jpg"])
    Album.create!(name: 'store exterieur', type: store_exterieur, photo_urls:["http://res.cloudinary.com/agaloppe84/image/upload/v1472658802/asbzfjhqc7xyspqoolxn.jpg","http://res.cloudinary.com/agaloppe84/image/upload/v1456127547/sample.jpg"])
    Album.create!(name: 'store interieur', type: store_interieur, photo_urls:["http://res.cloudinary.com/agaloppe84/image/upload/v1472658802/asbzfjhqc7xyspqoolxn.jpg","http://res.cloudinary.com/agaloppe84/image/upload/v1456127547/sample.jpg"])
    Album.create!(name: 'pergola', type: pergola, photo_urls:["http://res.cloudinary.com/agaloppe84/image/upload/v1472658802/asbzfjhqc7xyspqoolxn.jpg","http://res.cloudinary.com/agaloppe84/image/upload/v1456127547/sample.jpg"])
    Album.create!(name: 'menuiserie', type: menuiserie, photo_urls:["http://res.cloudinary.com/agaloppe84/image/upload/v1472658802/asbzfjhqc7xyspqoolxn.jpg","http://res.cloudinary.com/agaloppe84/image/upload/v1456127547/sample.jpg"])
    Album.create!(name: 'volet roulant', type: volet_roulant, photo_urls:["http://res.cloudinary.com/agaloppe84/image/upload/v1472658802/asbzfjhqc7xyspqoolxn.jpg","http://res.cloudinary.com/agaloppe84/image/upload/v1456127547/sample.jpg"])
    Album.create!(name: 'moustiquaire', type: moustiquaire, photo_urls:["http://res.cloudinary.com/agaloppe84/image/upload/v1472658802/asbzfjhqc7xyspqoolxn.jpg","http://res.cloudinary.com/agaloppe84/image/upload/v1456127547/sample.jpg"])


# ------------------------- Création des albums ------------------------- #

puts "Création des albums - END"






puts "Création des promos - START"

# ------------------------- Création des types de stores ------------------------- #


    Promo.create!(title: 'moustiquaire', description: "promo-test", start: Date.today + 2.months, end: Date.today + 3.months, type: moustiquaire, photo_urls:["http://res.cloudinary.com/agaloppe84/image/upload/v1472658802/asbzfjhqc7xyspqoolxn.jpg","http://res.cloudinary.com/agaloppe84/image/upload/v1456127547/sample.jpg"])
    Promo.create!(title: 'moustiquaire', description: "promo-test", start: Date.today + 3.months, end: Date.today + 4.months, type: pergola, photo_urls:["http://res.cloudinary.com/agaloppe84/image/upload/v1472658802/asbzfjhqc7xyspqoolxn.jpg","http://res.cloudinary.com/agaloppe84/image/upload/v1456127547/sample.jpg"])


# ------------------------- Création des types de stores ------------------------- #

puts "Création des promos - END"











puts "Création du seed - END"
