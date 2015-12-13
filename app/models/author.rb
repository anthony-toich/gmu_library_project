class Author < ActiveRecord::Base
validates :name, :dob, :nationality, :awards, :biography, :image_url, presence: true


has_many :books, dependent: :destroy
end
