class Book < ActiveRecord::Base
  attr_accessible :title

  def self.search(title=nil)
    result = self.scoped
    result = where('title ilike ?', "%#{title}%") if title.present?
    result 
  end
end
