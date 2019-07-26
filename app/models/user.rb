class User < ApplicationRecord
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    with_options on: :create do |create|
        create.validates :name, presence: true
        create.validates :email, presence: true, uniqueness: true, format: { with: VALID_EMAIL_REGEX }
        create.validates :password, presence: true, length: { minimum: 6 }
        create.validates :search_id, presence: true, uniqueness: true
    end
    
    def self.search(search)
        User.find_by(search_id: "#{search}" )
    end
    
end
