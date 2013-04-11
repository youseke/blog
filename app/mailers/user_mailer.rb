class UserMailer < ActionMailer::Base
  default from: "from@rails.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.send.subject
  #
  def send_mail
    @greeting = "Hi"

    mail(:to => "xxxxxxxxxxxxxxx@nts.ricoh.co.jp",
         :return_path => "tohtetsu.choh@nts.ricoh.co.jp"
         )
  end
end
