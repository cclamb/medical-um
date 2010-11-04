class ExchangeManager
  
  Id = 13
  
  def initialize(user_repository)
    @user_repository = user_repository
  end
  
  def register_user(user_info)
  end
  
  def remove_user(user_info)
  end
  
  def get_user(id) 
  end
  
  def update_user(user_info)
  end
  
  def initiate_negotiation(producer, consumer)
    return { :id => Id, :producer => producer, :consumer => consumer }
  end
  
  def update_negotiation(negotiation_info)
  end
  
  def get_negotiation(id)
  end
  
end