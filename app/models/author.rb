class Author < ActiveRecord::Base
validates :name, :dob, :nationality, :biography,  presence: true
validates_length_of :biography, :minimum => 15

has_many :books, dependent: :destroy
end
