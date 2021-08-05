class Dojo < ActiveRecord::Base
    validates :name, :city, :state, presence: true
    validates :state, length: {is:2, message: 'The state needs two characters'}
    
    has_many :ninjas
end
