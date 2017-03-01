class Dashboard::PagesController < ApplicationController

  def quotations
    @quotations = Quotation.all
    @non_treated_quotas = Quotation.where("treated = 'false'")
  end

end

