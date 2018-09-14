class Article < ActiveRecord::Base
  has_many :favorites
  has_many :users, througth: :favorites
end
