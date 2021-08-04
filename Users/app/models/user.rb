#Validations will be in here!
class User < ActiveRecord::Base #code for sever does not have to deal with database only with database
    validates :first_name, :last_name, :email_address, :age, presence: true
end
