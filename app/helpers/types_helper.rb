module TypesHelper

  def typeicon(type)
    if type.name == "moustiquaire"
      path = asset_path('asseticon06')
    elsif type.name == "porte de garage"
      path = asset_path('asseticon06')
    elsif type.name == "store interieur"
      path = asset_path('asseticon06')
    elsif type.name == "store exterieur"
      path = asset_path('asseticon06')
    elsif type.name == "menuiserie"
      path = asset_path('asseticon06')
    elsif type.name == "pergola"
      path = asset_path('asseticon06')
    elsif type.name == "volet roulant"
      path = asset_path('asseticon06')
    else
      path = asset_path('cold')
    end
  end

  def composed_plurname(type_name)
    if type_name.include? " "
      textarray = type_name.split
      if textarray.count > 2
        firstword = textarray[0]
        middleword = textarray[1]
        finalword = textarray[-1]
        plurfirstword = firstword.pluralize.capitalize
        real_plurname = "#{plurfirstword} #{middleword} #{finalword}"
      elsif textarray.count <= 2
        firstword = textarray[0]
        finalword = textarray[-1]
        plurfirstword = firstword.pluralize.capitalize
        plurfinalword = finalword.pluralize
        real_plurname = "#{plurfirstword} #{plurfinalword}"
      end
    else
      cap_type_name = type_name.pluralize.capitalize
      real_plurname = "#{cap_type_name}"
    end
  end


end

