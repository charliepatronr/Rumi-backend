class User < ApplicationRecord
  belongs_to :house
  has_many :sprint_chores
  has_many :sprints, through: :house


  def sprint_chores_c
    created_chores = self.sprint_chores.map{|chores| SprintChoreSerializer.new(chore)}
    created_chores.uniq
  end

end
