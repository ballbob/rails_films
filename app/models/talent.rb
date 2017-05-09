class Talent < ActiveRecord::Base
  has_many :awards 
  has_many :films,{through: :awards}
end
