require File.dirname(__FILE__) + '/../test_helper.rb'
require 'medical-um/exchange_manager'
require 'medical-um/basic_user_repository'
require 'test/unit'

class TestExchangeManager < Test::Unit::TestCase

  def setup
    
  end
  
  def test_negotiation
    user_a = Object.new
    user_b = Object.new
    mgr = ExchangeManager.new(BasicUserRepository.new)
    
    # Where does the negitiation start? how is it initiated?
    # do we care?
    neg_record = mgr.initiate_negotiation(user_a, user_b)
    
    assert_equal(user_a, neg_record[:producer])
    assert_equal(user_b, neg_record[:consumer])
    
    # What do we want to track in a negotiation?
    # every offer/counter, or just final?
    neg_record[:result] = { :license_uri => "uri", :artifact_uri => "uri" }
    mgr.update_negotiation(neg_record)
    
    
  end
  
  def test_truth
    assert true
  end
end