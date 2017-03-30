class QuotationMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.quotation_mailer.success.subject
  #
  def success(quotation)
    @quotation = quotation
    @logo = File.read("#{Rails.root}/app/assets/images/ttr-test.svg")
    mail(to: @quotation.email, subject: 'Les artisans du store | Votre devis en ligne')
  end

end
