# -*- coding: utf-8 -*-
class UserMailer < ActionMailer::Base

  default from: "choh@yasuharu.nsp.ricoh.co.jp", charset: "euc-jp"

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
