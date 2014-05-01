class Notifier < ActionMailer::Base
  def ask_rach_email(ask)
    @ask = ask
    mail(to: "rach.durham@gmail.com", from: ask.email, subject: ask.subject)
  end
end