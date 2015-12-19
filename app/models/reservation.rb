class Reservation < ActiveRecord::Base
  belongs_to :user
  belongs_to :book
  has_many :books
  has_many :users

before_create :set_dates
  def set_dates
    self.reserved_on = DateTime.now.to_date
    self.due_on = DateTime.now.to_date + 10.days
  end

end
