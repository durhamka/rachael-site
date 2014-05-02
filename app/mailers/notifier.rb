require 'mail'

class Notifier < ActionMailer::Base
  #def ask_rach_email(ask)
    #@ask = ask
    #mail(to: "rach.durham@gmail.com", from: ask.email, subject: ask.subject)
  #end

  Mail.defaults do
    delivery_method :smtp, {
      :address => 'smtp.sendgrid.net',
      :port => '587',
      :domain => 'heroku.com',
      :user_name => ENV['SENDGRID_USERNAME'],
      :password => ENV['SENDGRID_PASSWORD'],
      :authentication => :plain,
      :enable_starttls_auto => true
    }
  end

  Mail.deliver do
    @ask = ask
    to 'kinseyann505@gmail.com'
    from 'sender@example.com'
    subject ask.subject
    body ask.body
  end
end