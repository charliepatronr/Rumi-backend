class Sprint < ApplicationRecord
  belongs_to :house
  has_many :sprint_chores




  ## Add to users number of assigned chores? To help balance chore assignment throught
  ## with iterations?

  # users =  self.house.users
  # chores = self.house.chores
  # iterations = 0
  
    # iterations += 1
    # c.map{ |chore |
    #   if c.size >= 1 || user_array.size >= 1
    #     user_chore  = [chore_array.delete(c.sample)]
    #     user_chore << u.pop(u.sample)
    #     sprint_assignment << user_chore
    #     create_random_sprint_chores(u, c, sprint_assignment)      
    #   end 
    # } 

  def create_random_sprint_chores(user_array, chore_array)

    if user_array.count < 1
      user_array = self.house.users
    end 
      
  
    if chore_array.count > 1 
      chore = chore_array.sample
      user = user_array.sample
      SprintChore.create(user_id: user.id, chore_id: chore.id, sprint_id: self.id, completion_status: false)

      new_user_array = user_array.select{|user_instance| user_instance != user}
      new_chore_array = chore_array.select{|chore_instance| chore_instance != chore}

      create_random_sprint_chores(new_user_array, new_chore_array)

    else
      SprintChore.create(user_id: user_array.sample.id, chore_id: chore_array[0].id, sprint_id: self.id, completion_status: false)
    end 


  end 


  def confirm_sprint_chores(sprint_id, user_id, house_id)
    sprint = Sprint.find(params[:id])
    house = sprint.house
    user = User.find(params[:id])
    number_of_chores = house.chores.size
    count = 0


    sprint_chores = sprint.sprint_chores
    last_sprint_chores = sprint_chores.last(number_of_chores)

    last_sprint_chores.map do |chore|

      if chore.user_id === user.id
        chore.update(accepted: true)
      end 

    end 
  
    last_sprint_chores.map do |chore|
      if chore.accepted  === true 
        count += 1
      end 
    end 
    percent = count / number_of_chores

    if percent >= 0.50
      sprint.update(actiive: true, approval: true)
    end 

  end


  def reject_sprint_chores(sprint_id, user_id, house_id)
    sprint = Sprint.find(params[:id])
    house = sprint.house
    user = User.find(params[:id])
    number_of_chores = house.chores.size
    count = 0


    sprint_chores = sprint.sprint_chores
    last_sprint_chores = sprint_chores.last(number_of_chores)

    last_sprint_chores.map do |chore|

      if chore.user_id === user.id
        chore.update(rejected: true)
      end 

    end 
  
    last_sprint_chores.map do |chore|
      if chore.rejected  === true 
        count += 1
      end 
    end 
    percent = count / number_of_chores

    if percent >= 0.50
      sprint.update(approval: false, active: false)
    end 

  end 


end





