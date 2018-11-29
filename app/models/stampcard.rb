class Stampcard < ApplicationRecord
  belongs_to :user 
  has_many :stamps
end
