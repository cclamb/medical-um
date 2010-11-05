require File.dirname(__FILE__) + '/../test_helper.rb'
require 'medical-um/basic_transaction_repository'
require 'test/unit'

class BasicTransactionRepositoryTest < Test::Unit::TestCase
  
  Id = 13
  SerializationFile = 'user_repo.rbser'
  
  def test_creation
    assert_not_nil(BasicTransactionRepository.new(0))
  end
  
end