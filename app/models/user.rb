class User < ApplicationRecord
    has_secure_password

    validates :name, presence: true, uniqueness: true
    validates :name, length: { in: 3..20 }
   
end
