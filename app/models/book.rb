class Book < ActiveRecord::Base
  attr_accessible :title

  def self.search(title=nil)
    result = self.scoped
    result = where('unaccent(title) ilike unaccent(?)', "%#{title}%") if title.present?
    result 
  end
end
