class NotificationMailer < Devise::Mailer
  default from: "starterkit@mail.com", reply_to: "starterkit@mail.com"
  layout "mail"
end
