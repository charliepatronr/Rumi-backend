class HouseSerializer < ActiveModel::Serializer
  attributes :id, :name, :unique_key, :img, :rof_week, :rules
  has_many :users
  has_many :chores
  has_many :sprints
  has_many :sprint_chores
end



    # def initialize(house_obj)
    #     @house = house_obj
    # end

    # def to_serialized_json
    #     options = {
    #         include: {
    #             users: {
    #                 only: [:id, :name, :email, :admin, :username]
    #             }, 
    #             chores: {
    #                 only: [:id, :title, :description, :points]
    #             },
    #             sprints: {
    #                 only: [:id, :begin_date, :end_date, :completion_status]
    #             }
    #         },
    #         except: [:updated_at]
    #     }
    #     @house.to_json(options)
    # end
