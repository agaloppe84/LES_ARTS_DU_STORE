module ApplicationHelper

  def composed_plurname(type_name)
    if type_name.include? " "
      textarray = type_name.split
      if textarray.count > 2
        firstword = textarray[0]
        middleword = textarray[1]
        finalword = textarray[-1]
        plurfirstword = firstword.pluralize.capitalize
        return real_plurname = "#{plurfirstword} #{middleword} #{finalword}"
      elsif textarray.count <= 2
        firstword = textarray[0]
        finalword = textarray[-1]
        plurfirstword = firstword.pluralize.capitalize
        if finalword[-1] == "s"
          plurfinalword = finalword
        else
          plurfinalword = finalword.pluralize
        end
        return real_plurname = "#{plurfirstword} #{plurfinalword}"
      end
    elsif type_name.include? "-"
      textarray = type_name.split("-")
      if textarray.count > 2
        firstword = textarray[0]
        middleword = textarray[1]
        finalword = textarray[-1]
        plurfirstword = firstword.pluralize.capitalize
        return real_plurname = "#{plurfirstword}-#{middleword}-#{finalword}"
      elsif textarray.count <= 2
        firstword = textarray[0]
        finalword = textarray[-1]
        plurfirstword = firstword.pluralize.capitalize
        plurfinalword = finalword.pluralize
        return real_plurname = "#{plurfirstword}-#{plurfinalword}"
      end
    else
      if type_name.last(3) == "eau"
        cap_type_name = type_name.capitalize
        return real_plurname = "#{cap_type_name}x"
      else
        cap_type_name = type_name.pluralize.capitalize
        return real_plurname = "#{cap_type_name}"
      end
    end
  end

  def font_icon_dynamic

    @fontastic_icons = ["icon-android-clipboard",
                        "icon-android-cloud-outline",
                        "icon-android-open",
                        "icon-bug",
                        "icon-code-download",
                        "icon-paintbucket",
                        "icon-fold",
                        "icon-hourglass",
                        "icon-light-bulb",
                        "icon-pulse",
                        "icon-squirrel",
                        "icon-cloud-rain",
                        "icon-download",
                        "icon-camera-1",
                        "icon-cloud-sun",
                        "icon-adjust",
                        "icon-cloud",
                        "icon-home-wifi",
                        "icon-alert",
                        "icon-droplet",
                        "icon-feather",
                        "icon-hourglass-1",
                        "icon-light-up",
                        "icon-thermometer-1",
                        "icon-isight",
                        "icon-android-close",
                        "icon-android-done",
                        "icon-aperture",
                        "icon-camera",
                        "icon-flame",
                        "icon-paintbrush",
                        "icon-flame-1",
                        "icon-key",
                        "icon-lock",
                        "icon-rss",
                        "icon-bug-1",
                        "icon-compass",
                        "icon-paper-airplane",
                        "icon-boat",
                        "icon-thermometer",
                        "icon-arrow-oblique-contract",
                        "icon-drops",
                        "icon-locked",
                        "icon-battery",
                        "icon-eye",
                        "icon-flash-1",
                        "icon-info",
                        "icon-lock-1",
                        "icon-target",
                        "icon-measure",
                        "icon-android-color-palette",
                        "icon-android-exit",
                        "icon-arrow-right-b",
                        "icon-clock",
                        "icon-flash",
                        "icon-radio-waves",
                        "icon-git-commit",
                        "icon-law",
                        "icon-plug",
                        "icon-zap",
                        "icon-clipboard",
                        "icon-crosshairpinpoint",
                        "icon-umbrella",
                        "icon-camera-1-1",
                        "icon-paint-bucket",
                        "icon-bolt",
                        "icon-euro",
                        "icon-adjust-1",
                        "icon-bucket",
                        "icon-flag",
                        "icon-flashlight",
                        "icon-key-1",
                        "icon-shareable",
                        "icon-lock-alt",
                        "icon-cloud-1"
                       ]
  end

end

