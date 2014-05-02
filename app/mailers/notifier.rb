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

  @ask = Ask.find(params: ask[:id])
  @mail = Mail.deliver do
    to 'kinseyann505@gmail.com'
    from @ask.name
    subject @ask.subject
    text_part do
      body @ask.body
    end
  end
end