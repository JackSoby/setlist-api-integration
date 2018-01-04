class Show < ApplicationRecord

   belongs_to :tour
   has_many :setlists
end
