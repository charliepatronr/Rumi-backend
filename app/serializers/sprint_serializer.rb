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



# class SprintSerializer

#   def initialize(sprint_obj)
#       @sprint = sprint_obj
#   end

#   def to_serialized_json
#       options = {
#           include: {
#               sprint_chores: {
#                   only: [:completion_status, :review, :sprint_id, :chore_id, :user_id]
#               },
#           },
#           except: [:updated_at]
#       }
#       @sprint.to_json(options)
#   end
# end