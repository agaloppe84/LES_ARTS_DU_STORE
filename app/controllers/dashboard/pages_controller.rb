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

end

