class UserSerializer

    def initialize(user_obj)
        @user = user_obj
    end

    def to_serialized_json
        options = {
            include: {
                house: {
                    only: [:id, :name, :email, :username, :unique_key, :img, :rof_week, :rules]
                }, 
                sprint_chores: {
                    only: [:id, :sprint_id, :chore_id, :completion_status, :review]
                },
            },
            except: [:updated_at]
        }
        @user.to_json(options)
    end
end