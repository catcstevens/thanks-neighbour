class Neighbour < ApplicationRecord
    has_many :listings
    has_many :reviews
    
end
