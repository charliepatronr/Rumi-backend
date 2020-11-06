class UserSerializer < ActiveModel::Serializer
        attributes :id, 
        :house_id,
        :name, 
        :img,
        :admin,
        :username,
        :email, 
        :points,
        :historical_points
        
      has_one :house
      has_many :sprint_chores


end

# class UserSerializer < ActiveModel::Serializer

#     # def initialize(user_obj)
#     #     @user = user_obj
#     # end

#     # def to_serialized_json
#     #     options = {
#     #         include: [:house, :sprints]

#     #     }
#     #     @user.to_json(options)
#     # end


# end
