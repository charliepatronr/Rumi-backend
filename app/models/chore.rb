class Chore < ApplicationRecord
  belongs_to :house
  has_many :sprint_chores
end
