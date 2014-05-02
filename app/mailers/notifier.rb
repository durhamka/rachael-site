require 'mail'

class Notifier < ActionMailer::Base
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

  mail = Mail.deliver do
    to 'kinseyann505@gmail.com'
    from 'kinsey@gschool.it'
    subject 'This is the subject of your email'
    text_part do
      body 'This is a a test'
    end
    html_part do
      content_type 'text/html; charset=UTF-8'
      body '<b>Hello world in HTML</b>'
    end
  end
end