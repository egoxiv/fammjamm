class Member < ActiveRecord::Base
  has_secure_password
  belongs_to(:family)
  has_many(:tasks)
end
