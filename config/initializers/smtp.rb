ActionMailer::Base.smtp_settings = {
  address: "smtp.gmail.com",
  port: 587,
  domain: 'gmail.com',
  user_name: ENV['kiokuwagon@gmail.com'],
  password: ENV['yvauktllwixcenwt'],
  authentication: :login,
  enable_starttls_auto: true
}
