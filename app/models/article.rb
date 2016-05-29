class Article < ActiveRecord::Base
  validates :title, presence: true, length: { minimum: 3, maximum: 30 }
  validates :text, presence: true, length: { minimum: 80 }
end
