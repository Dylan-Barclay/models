class Blog < ActiveRecord::Base
    validates :name, :description, presence: true
    has_many :comments, as: :imageable 
    has_many :posts, dependent: :destroy
    has_many :owners, dependent: :destroy
end
