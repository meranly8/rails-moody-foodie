class User < ApplicationRecord
    has_secure_password
    
    has_many :entries, dependent: :delete_all

    validates :name, presence: true
    validates :email, presence: true
    validates :email, uniqueness: true

    def self.find_or_create_from_omniauth(auth)
        User.find_or_create_by(uid: auth['uid'], provider: ['provider']) do |u|
            u.name = auth['info']['first_name']
            u.email = auth['info']['email']
            u.password = SecureRandom.hex(16)
        end
    end
end
