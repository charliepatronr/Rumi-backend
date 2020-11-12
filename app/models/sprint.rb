class Sprint < ApplicationRecord
  belongs_to :house
  has_many :sprint_chores
  has_many :users, through: :house

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

    def end_sprint_points

      sprint_chores = self.sprint_chores
      
      sprint_chores.each do |sprint_chore|
        chore_points = sprint_chore.chore.points 
        user = sprint_chore.user 
        user_points = user.historical_points 
        new_historical_points = (user_points - chore_points)

        if !sprint_chore.completion_status
          user.update(historical_points: new_historical_points)
        end 

      end 

    end


    def roomie_of_the_week
      sprint_chores = self.sprint_chores
      user_chore_hash = sprint_chores.select { |sprint_chore| sprint_chore.completion_status}.map{
        |sprint_chore| {  sprint_chore.user.id => sprint_chore.chore.points }
      }
      result = Hash.new(0)      
      user_chore_hash.each{|nested_hash| nested_hash.each { |key, value| result[key] += value} }
      puts result
      if result.size >=1 
        arr = result.max_by{|k, v| v }[0]
        if arr[1] > 0
          user_id = arr[0]
        end 
      else
        user_id = nil
      end 
      user_id
    end

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
    house = self.house
    user = User.find(user_id)
    number_of_chores = house.chores.size
    count = 0


    sprint_chores = self.sprint_chores
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

    percent = count.to_f / number_of_chores.to_f

    if percent >= 0.50
      self.update(active: true, approval: true)
    end 

  end


  def reject_sprint_chores(sprint_id, user_id, house_id)
    house = self.house
    user = User.find(user_id)
    number_of_chores = house.chores.size
    count = 0


    sprint_chores = self.sprint_chores
    last_sprint_chores = sprint_chores.last(number_of_chores)

    last_sprint_chores.map do |chore|

      if chore.user_id === user.id
        chore.update(rejected: true)
      end 

    end 

    #users 
    #sprint.sprint_chores.uniq_by to get array of chores unique by user
    #unique_sprint.chore.filter 

  ## get array of sprint chores uniq_by user id 


    last_sprint_chores.map do |chore|
      if chore.rejected  === true 
        count += 1
      end
    end 
    
    percent = count.to_f / number_of_chores.to_f

    if percent >= 0.50
      self.update(active: false, approval: false)
    end 
  end


end





