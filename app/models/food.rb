class Food < ApplicationRecord
    validates :name, presence: true, uniqueness: true
    validates :calories, numericality: { only_integer: true }
end
