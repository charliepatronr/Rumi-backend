class Sprint < ApplicationRecord
  belongs_to :house
  has_many :sprint_chores
end
