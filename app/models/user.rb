class User < ActiveRecord::Base
  validates :name, presence:true, uniqueness:true
  has_many :reservations, dependent: :destroy
  has_secure_password

end
