ActionMailer::Base.smtp_settings = {
  :address => "smtp.gmail.com",
  :port => 587,
  :domain => "gmail.com",
  :user_name => ENV['MAILER_USER'],
  :password => ENV['MAILER_PW'],
  :authentication => 'plain',
  :enable_starttls_auto => true
}