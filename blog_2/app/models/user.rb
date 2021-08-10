class User < ActiveRecord::Base
    validates :first_name, :last_name, :email_address, presence: true
    has_many :owners, dependent: :destroy
    has_many :messages, dependent: :destroy
    has_many :comments, as: :imageable
    has_many :posts
    has_many :blogs, through: :owners
end
