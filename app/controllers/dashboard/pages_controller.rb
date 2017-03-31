class Dashboard::PagesController < ApplicationController

  def quotations
    @quotations = Quotation.all.order(:id)
    @non_treated_quotas = @quotations.where(treated: false)
    @count01 = (Quotation.where(blindttype: 'Menuiserie')).count
    @count02 = (Quotation.where(blindttype: 'Moustiquaire')).count
    @count03 = (Quotation.where(blindttype: 'Store interieur')).count
    @count04 = (Quotation.where(blindttype: 'Store exterieur')).count
  end

  def pathfilter
  end

  def analytics
    @january = Quotation.where({ created_at: (DateTime.new(2017,1,1,1,0,0))..DateTime.new(2017,2,1,1,0,0) })
    @february = Quotation.where({ created_at: (DateTime.new(2017,2,1,1,0,0))..DateTime.new(2017,3,1,1,0,0) })
    @march = Quotation.where({ created_at: (DateTime.new(2017,3,1,1,0,0))..DateTime.new(2017,4,1,1,0,0) })
    @april = Quotation.where({ created_at: (DateTime.new(2017,4,1,1,0,0))..DateTime.new(2017,5,1,1,0,0) })
    @may = Quotation.where({ created_at: (DateTime.new(2017,5,1,1,0,0))..DateTime.new(2017,6,1,1,0,0) })
    @june = Quotation.where({ created_at: (DateTime.new(2017,6,1,1,0,0))..DateTime.new(2017,7,1,1,0,0) })
    @july = Quotation.where({ created_at: (DateTime.new(2017,7,1,1,0,0))..DateTime.new(2017,8,1,1,0,0) })
    @august = Quotation.where({ created_at: (DateTime.new(2017,8,1,1,0,0))..DateTime.new(2017,9,1,1,0,0) })
    @september = Quotation.where({ created_at: (DateTime.new(2017,9,1,1,0,0))..DateTime.new(2017,10,1,1,0,0) })
    @october = Quotation.where({ created_at: (DateTime.new(2017,10,1,1,0,0))..DateTime.new(2017,11,1,1,0,0) })
    @november = Quotation.where({ created_at: (DateTime.new(2017,11,1,1,0,0))..DateTime.new(2017,12,1,1,0,0) })
    @december = Quotation.where({ created_at: (DateTime.new(2017,12,1,1,0,0))..DateTime.new(2018,1,1,1,0,0) })



    @march_category_1 = (@march.where(blindttype: 'Moustiquaire')).count
    @march_category_2 = (@march.where(blindttype: 'Store interieur')).count
    @march_category_3 = (@march.where(blindttype: 'Store exterieur')).count
    @march_category_4 = (@march.where(blindttype: 'Pergola')).count
    @march_category_5 = (@march.where(blindttype: 'Menuiserie')).count
    @march_category_6 = (@march.where(blindttype: 'Porte de garage')).count
    @march_category_7 = (@march.where(blindttype: 'Volet roulant')).count

    @april_category_1 = (@april.where(blindttype: 'Moustiquaire')).count
    @april_category_2 = (@april.where(blindttype: 'Store interieur')).count
    @april_category_3 = (@april.where(blindttype: 'Store exterieur')).count
    @april_category_4 = (@april.where(blindttype: 'Pergola')).count
    @april_category_5 = (@april.where(blindttype: 'Menuiserie')).count
    @april_category_6 = (@april.where(blindttype: 'Porte de garage')).count
    @april_category_7 = (@april.where(blindttype: 'Volet roulant')).count

    @may_category_1 = (@may.where(blindttype: 'Moustiquaire')).count
    @may_category_2 = (@may.where(blindttype: 'Store interieur')).count
    @may_category_3 = (@may.where(blindttype: 'Store exterieur')).count
    @may_category_4 = (@may.where(blindttype: 'Pergola')).count
    @may_category_5 = (@may.where(blindttype: 'Menuiserie')).count
    @may_category_6 = (@may.where(blindttype: 'Porte de garage')).count
    @may_category_7 = (@may.where(blindttype: 'Volet roulant')).count

    @june_category_1 = (@june.where(blindttype: 'Moustiquaire')).count
    @june_category_2 = (@june.where(blindttype: 'Store interieur')).count
    @june_category_3 = (@june.where(blindttype: 'Store exterieur')).count
    @june_category_4 = (@june.where(blindttype: 'Pergola')).count
    @june_category_5 = (@june.where(blindttype: 'Menuiserie')).count
    @june_category_6 = (@june.where(blindttype: 'Porte de garage')).count
    @june_category_7 = (@june.where(blindttype: 'Volet roulant')).count

    @july_category_1 = (@july.where(blindttype: 'Moustiquaire')).count
    @july_category_2 = (@july.where(blindttype: 'Store interieur')).count
    @july_category_3 = (@july.where(blindttype: 'Store exterieur')).count
    @july_category_4 = (@july.where(blindttype: 'Pergola')).count
    @july_category_5 = (@july.where(blindttype: 'Menuiserie')).count
    @july_category_6 = (@july.where(blindttype: 'Porte de garage')).count
    @july_category_7 = (@july.where(blindttype: 'Volet roulant')).count

    @august_category_1 = (@august.where(blindttype: 'Moustiquaire')).count
    @august_category_2 = (@august.where(blindttype: 'Store interieur')).count
    @august_category_3 = (@august.where(blindttype: 'Store exterieur')).count
    @august_category_4 = (@august.where(blindttype: 'Pergola')).count
    @august_category_5 = (@august.where(blindttype: 'Menuiserie')).count
    @august_category_6 = (@august.where(blindttype: 'Porte de garage')).count
    @august_category_7 = (@august.where(blindttype: 'Volet roulant')).count

    @september_category_1 = (@september.where(blindttype: 'Moustiquaire')).count
    @september_category_2 = (@september.where(blindttype: 'Store interieur')).count
    @september_category_3 = (@september.where(blindttype: 'Store exterieur')).count
    @september_category_4 = (@september.where(blindttype: 'Pergola')).count
    @september_category_5 = (@september.where(blindttype: 'Menuiserie')).count
    @september_category_6 = (@september.where(blindttype: 'Porte de garage')).count
    @september_category_7 = (@september.where(blindttype: 'Volet roulant')).count

    @october_category_1 = (@october.where(blindttype: 'Moustiquaire')).count
    @october_category_2 = (@october.where(blindttype: 'Store interieur')).count
    @october_category_3 = (@october.where(blindttype: 'Store exterieur')).count
    @october_category_4 = (@october.where(blindttype: 'Pergola')).count
    @october_category_5 = (@october.where(blindttype: 'Menuiserie')).count
    @october_category_6 = (@october.where(blindttype: 'Porte de garage')).count
    @october_category_7 = (@october.where(blindttype: 'Volet roulant')).count

    @november_category_1 = (@november.where(blindttype: 'Moustiquaire')).count
    @november_category_2 = (@november.where(blindttype: 'Store interieur')).count
    @november_category_3 = (@november.where(blindttype: 'Store exterieur')).count
    @november_category_4 = (@november.where(blindttype: 'Pergola')).count
    @november_category_5 = (@november.where(blindttype: 'Menuiserie')).count
    @november_category_6 = (@november.where(blindttype: 'Porte de garage')).count
    @november_category_7 = (@november.where(blindttype: 'Volet roulant')).count

    @december_category_1 = (@december.where(blindttype: 'Moustiquaire')).count
    @december_category_2 = (@december.where(blindttype: 'Store interieur')).count
    @december_category_3 = (@december.where(blindttype: 'Store exterieur')).count
    @december_category_4 = (@december.where(blindttype: 'Pergola')).count
    @december_category_5 = (@december.where(blindttype: 'Menuiserie')).count
    @december_category_6 = (@december.where(blindttype: 'Porte de garage')).count
    @december_category_7 = (@december.where(blindttype: 'Volet roulant')).count

    @january_category_1 = (@january.where(blindttype: 'Moustiquaire')).count
    @january_category_2 = (@january.where(blindttype: 'Store interieur')).count
    @january_category_3 = (@january.where(blindttype: 'Store exterieur')).count
    @january_category_4 = (@january.where(blindttype: 'Pergola')).count
    @january_category_5 = (@january.where(blindttype: 'Menuiserie')).count
    @january_category_6 = (@january.where(blindttype: 'Porte de garage')).count
    @january_category_7 = (@january.where(blindttype: 'Volet roulant')).count

    @february_category_1 = (@february.where(blindttype: 'Moustiquaire')).count
    @february_category_2 = (@february.where(blindttype: 'Store interieur')).count
    @february_category_3 = (@february.where(blindttype: 'Store exterieur')).count
    @february_category_4 = (@february.where(blindttype: 'Pergola')).count
    @february_category_5 = (@february.where(blindttype: 'Menuiserie')).count
    @february_category_6 = (@february.where(blindttype: 'Porte de garage')).count
    @february_category_7 = (@february.where(blindttype: 'Volet roulant')).count

  end

end


















