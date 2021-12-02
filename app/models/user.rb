class User < ActiveRecord::Base
    validates :email, :presence => true, :uniqueness => true
    validates :phone, :presence => true, :uniqueness => true
    has_secure_password
end