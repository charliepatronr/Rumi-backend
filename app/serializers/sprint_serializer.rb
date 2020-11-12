class SprintSerializer < ActiveModel::Serializer
  attributes :id, 
  :house_id, 
  :begin_date, 
  :end_date, 
  :completion_status, 
  :active,
  :approval

  has_many :sprint_chores
  has_many :users


end
