class SprintChoreSerializer

    def initialize(sprint_chore_obj)
        @sprint_chore = sprint_chore_obj
    end

    def to_serialized_json
        options = {
            include: {
                user: {
                    only: [:id, :name, :admin, :house_id, :points,  :img]
                }, 
                sprint: {
                    only: [:id, :house_id, :begin_date, :end_date, :completion_status]
                },
                chore: {
                    only: [:id, :title, :description, :points, :house_id]
                },
            },
            except: [:updated_at]
        }
        @sprint_chore.to_json(options)
    end
end