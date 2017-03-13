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




end

