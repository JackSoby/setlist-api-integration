class Show < ApplicationRecord

   belongs_to :tour
   has_many :songs
end
