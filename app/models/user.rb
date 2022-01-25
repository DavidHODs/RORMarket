class User < ApplicationRecord
    validates :email, uniquenes: true
    validates_format_of :email, with: /@/
    validates :password_digest, presence: true
end