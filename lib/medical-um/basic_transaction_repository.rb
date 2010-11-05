
class BasicTransactionRepository
  
  def initialize(id)
    @id = id
    @repo = Hash.new
  end
  
  def initialize_negotiation
    id = id + 1
    record = { :id => id }
    @repo[id] = record
    return record
  end
  
  def update_negotiation(record)
    @repo[record[:id]] = record
  end
  
  def get_negitiation(id)
    return @repo[id]
  end
  
end
