class User < ApplicationRecord
    has_many :microposts
    validates :name, length: { maximum: 45, minimum: 1 }
    
    # https://stackoverflow.com/questions/38611405/how-to-do-email-validation-in-ruby-on-rails
    validates :email, format: { with: URI::MailTo::EMAIL_REGEXP } 
end
