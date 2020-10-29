class SprintSerializer

    def initialize(sprint_obj)
        @sprint = sprint_obj
    end

    def to_serialized_json
        options = {
            include: {
                sprint_chores: {
                    only: [:completion_status, :review, :sprint_id, :chore_id, :user_id]
                },
            },
            except: [:updated_at]
        }
        @sprint.to_json(options)
    end
end