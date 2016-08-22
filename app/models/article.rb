class Article < ActiveRecord::Base
  validates :subject, :presence => true
  validates :content, :presence => true
end
