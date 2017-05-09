class Film < ActiveRecord::Base
  belongs_to :genre
  has_many :awards
  has_many :talents, {through: :awards}
end
