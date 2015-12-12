class Book < ActiveRecord::Base
  belongs_to :author

GENRES = ['Art','Cookbooks', 'Fantasy', 'History',  'Music', 'Psychology', 'Science Fiction']

end
