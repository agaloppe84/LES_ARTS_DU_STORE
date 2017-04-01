module TypesHelper





  def typeicon(type)

    @fonthash = { n1: "android-clipboard",
                  n2: "android-cloud-outline",
                  n3: "light-bulb",
                  n4: "pulse",
                  n5: "squirrel",
                  n6: "cloud-rain",
                  n7: "download",
                  n8: "camera-1",
                  n9: "cloud-sun",
                  n10: "adjust",
                  n11: "cloud",
                  n12: "home-wifi",
                  n13: "alert",
                  n14: "droplet",
                  n15: "feather",
                  n16: "hourglass-1",
                  n17: "light-up",
                  n18: "thermometer-1",
                  n19: "isight",
                  n20: "android-close",
                  n21: "android-done",
                  n22: "aperture",
                  n23: "camera",
                  n24: "flame",
                  n25: "paintbrush",
                  n26: "flame-1",
                  n27: "key",
                  n28: "lock",
                  n29: "rss",
                  n30: "home-1",
                  n31: "car-side",
                  n32: "store",
                  n33: "bug-1"
                  }



    if type.name.include? ("moustiquaire")
      @icon = @fonthash.select {|k,v| v.include? ("bug")}
      @icon_good = @icon.values.last
    elsif type.name.include? ("garage")
      @icon = @fonthash.select {|k,v| v.include? ("car")}
      @icon_good = @icon.values.last
    elsif type.name.include? ("interieur")
      @icon = @fonthash.select {|k,v| v.include? ("sun")}
      @icon_good = @icon.values.last
    elsif type.name.include? ("exterieur")
      @icon = @fonthash.select {|k,v| v.include? ("cloud")}
      @icon_good = @icon.values.last
    elsif type.name.include? ("menuiserie")
      @icon = @fonthash.select {|k,v| v.include? ("store")}
      @icon_good = @icon.values.last
    elsif type.name.include? ("pergola")
      @icon = @fonthash.select {|k,v| v.include? ("store")}
      @icon_good = @icon.values.last
    elsif type.name.include? ("volet")
      @icon = @fonthash.select {|k,v| v.include? ("home")}
      @icon_good = @icon.values.last
    else
      path = asset_path('cold')
    end

  end



end

