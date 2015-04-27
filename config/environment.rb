# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!

 ActionMailer::Base.smtp_settings = {
  :address              => "smtp.gmail.com",  
  :port                 => 587,  
  :domain               => "gmail.com",  
  :user_name            => "hitendra1632",  
  :password             => "8695398008",
  :port                 =>      587,
  :authentication => :plain,
  :enable_starttls_auto => true
}
ActionMailer::Base.default_url_options[:host] = "localhost:3000"
