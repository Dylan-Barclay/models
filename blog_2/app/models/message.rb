class Message < ActiveRecord::Base
  validates :author, :message, presence: true
  has_many :comments, as: :imageable
  belongs_to :post
  belongs_to :user
end
