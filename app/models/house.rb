class House < ApplicationRecord
    has_many :chores
    has_many :sprints
    has_many :users
    has_many :sprint_chores, through: :sprints

end
