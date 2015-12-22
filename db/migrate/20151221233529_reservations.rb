class Reservations < ActiveRecord::Migration
  def change
    change_column :reservations, :reserved_on, :date, :null => false
    change_column :reservations, :due_on, :date, :null => false
  end
end
