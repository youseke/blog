# -*- coding: utf-8 -*-
class UserMailer < ActionMailer::Base
  default from: "choh@yasuharu.nsp.ricoh.co.jp",:charset => 'shift-jis'

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.send.subject
  #
  def send_mail
 
    s = 'Japanese'
    puts s.encoding

    mail(:to => 'tohtetsu.choh@nts.ricoh.co.jp',
         :subject => '通知',
         :body => s
         )
  end
end
