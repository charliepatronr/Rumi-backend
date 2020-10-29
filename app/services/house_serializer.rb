class HouseSerializer

    def initialize(house_obj)
        @house = house_obj
    end

    def to_serialized_json
        options = {
            include: {
                users: {
                    only: [:id, :name, :email, :admin, :username]
                }, 
                chores: {
                    only: [:id, :title, :description, :points]
                },
                sprints: {
                    only: [:id, :begin_date ]
                }
            },
            except: [:updated_at]
        }
        @house.to_json(options)
    end
end