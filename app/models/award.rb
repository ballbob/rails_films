class Award < ActiveRecord::Base
  belongs_to :film
  belongs_to :talent
end
