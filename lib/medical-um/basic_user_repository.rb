class BasicUserRepository
  
  def initialize
    @repo = Hash.new
  end
  
  def register(info)
    id = info[:id]
    @repo[id] = info
  end
  
  def remove(id)
    @repo.delete(id)
  end
  
  def get(id)
    @repo[id]
  end
  
  def update(info)
    register(info)
  end
  
end