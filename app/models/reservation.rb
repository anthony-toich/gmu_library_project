class Reservation < ActiveRecord::Base
  belongs_to :user
  belongs_to :book

before_create :set_dates

private
  def set_dates
    self.reserved_on = DateTime.now.to_date
    self.due_on = DateTime.now.to_date + 10.days
  end

end
