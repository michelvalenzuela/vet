class PetHistory < ApplicationRecord
    belongs_to :pet

    validates :weight, :heigth, :pet_id, presence: true
    
    
end
