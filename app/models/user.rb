class User < ActiveRecord::Base
  validates :name, presence:true, uniqueness:true
  has_many :reservations, dependent: :destroy
  has_many :books, through: :reservations
  has_secure_password

  def index
    @users = User.order(:name)
  end

end
