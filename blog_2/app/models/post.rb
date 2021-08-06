class Post < ActiveRecord::Base
  validates :title, :content, presence: true
  has_many :messages, dependent: :destroy
  belongs_to :blog
  belongs_to :user
end
