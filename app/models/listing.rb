class Listing < ApplicationRecord
  belongs_to :neighbour
  
  enum condition: { excellent: 0, good: 1, ok: 2, used: 3 }
end
