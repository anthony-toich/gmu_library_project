class Book < ActiveRecord::Base
  belongs_to :author
  has_many :reservations, dependent: :destroy
  has_many :users, through: :reservations

GENRES = ['Art','Cookbooks', 'Fantasy', 'History',  'Music', 'Psychology', 'Science Fiction']

validates :title, :pages, :isbn, :genre, :abstract, :image_cover_url, :published_on, :total_in_library, presence: true
validates :pages, numericality:{only_integer: true, greater_than_or_equal_to: 0}, unless: "pages.blank?"

def self.search(query)
  joins(:author).where("title like? OR isbn like? OR genre like? or authors.name like ?", "%#{query}%" , "%#{query}%" , "%#{query}%", "%#{query}%")
end

end
