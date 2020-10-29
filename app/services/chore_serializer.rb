class ChoreSerializer

    def initialize(chore_obj)
        @chore = chore_obj
    end

    def to_serialized_json
        options = {
            include: {
                sprint_chores: {
                    only: [:completion_status, :review, :chore_id, :sprint_id, :user_id]
                },
            },
            except: [:updated_at]
        }
        @chore.to_json(options)
    end
end