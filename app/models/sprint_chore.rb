class SprintChore < ApplicationRecord
  belongs_to :sprint
  belongs_to :chore
  belongs_to :user
end
