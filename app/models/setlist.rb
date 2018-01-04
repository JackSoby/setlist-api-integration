class Setlist < ApplicationRecord

   belongs_to :show 
   has_many :songs
end
