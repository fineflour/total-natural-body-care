class Article < ApplicationRecord
  #include PgSearch
  self.per_page = 50 # for will paginate
end
