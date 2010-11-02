require File.dirname(__FILE__) + '/test_helper.rb'
require 'medical-um/exchange_manager'
require 'test/unit'

class ExchangeMangerTest < Test::Unit::TestCase
  def test_creation
    ex_mgr = ExchangeManager.new
    assert_not_nil ex_mgr
  end
end