class Book < ActiveRecord::Base
  belongs_to :author

GENRES = ['Art','Cookbooks', 'Fantasy', 'History',  'Music', 'Psychology', 'Science Fiction']

validates :title, :pages, :isbn, :genre, :abstract, :image_cover_url, :published_on, :total_in_library, presence: true

validates :pages, numericality:{only_integer: true, greater_than_or_equal_to: 0}, unless: "pages.blank?"

end
