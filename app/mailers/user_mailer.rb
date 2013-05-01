# -*- coding: utf-8 -*-
class UserMailer < ActionMailer::Base
  default from: "choh@yasuharu.nsp.ricoh.co.jp", charset: "euc-jp"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.send.subject
  #


  def send_mail
    subject = "こんにちは"

    puts subject.encoding

    mail(:to => "tohtetsu.choh@nts.ricoh.co.jp",
         :subject => subject,
         :body => "日本".encode("euc-jp")
         :encoding => "euc-jp"
         )
  end
end
