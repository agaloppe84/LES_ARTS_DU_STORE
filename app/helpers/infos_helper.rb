module InfosHelper

  def infoicon(info)
    if info.title.include? "dimensions"
      path = asset_path('asseticon06')
    elsif info.title == "porte de garage"
      path = asset_path('asseticon06')
    elsif info.title == "store interieur"
      path = asset_path('asseticon06')
    elsif info.title == "store exterieur"
      path = asset_path('asseticon06')
    elsif info.title == "menuiserie"
      path = asset_path('asseticon06')
    elsif info.title == "pergola"
      path = asset_path('asseticon06')
    elsif info.title == "volet roulant"
      path = asset_path('asseticon06')
    else
      path = asset_path('cold')
    end
  end

end
