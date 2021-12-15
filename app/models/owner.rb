class Owner < ApplicationRecord
    has_many :pets, dependent: :destroy

    validates :name, presence: true
    validates :phone_number, presence: true, length: {minimum: 8, maximum: 9}
    validates :email, presence: true, uniqueness: { case_sensitive: false }
end
