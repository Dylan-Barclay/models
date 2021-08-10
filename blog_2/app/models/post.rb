class Post < ActiveRecord::Base
  validates :title, :content, presence: true
  has_many :messages, dependent: :destroy
  has_many :comments, as: :imageable
  belongs_to :blog
  belongs_to :user
end
