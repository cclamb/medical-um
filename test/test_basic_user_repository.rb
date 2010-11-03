require File.dirname(__FILE__) + '/test_helper.rb'
require 'medical-um/basic_user_repository'
require 'test/unit'

class BasicUserRepositoryTest < Test::Unit::TestCase
  
  Id = 13
  
  def create_user_info
    h = Hash.new
    name = Hash.new
    name[:first] = 'Franklin'
    name[:last] = 'DeBohner'
    h[:id] = Id
    h[:name] =  name
    return h
  end
  
  def test_creation
    repo = BasicUserRepository.new
    assert_not_nil(repo)
  end
  
  def test_register
    repo = BasicUserRepository.new
    info_in = create_user_info
    repo.register(info_in)
    info_out = repo.get(Id)
    assert_equal(Id, info_out[:id])
    assert_equal(info_in[:name][:first], info_out[:name][:first])
    assert_equal(info_in[:name][:last], info_out[:name][:last])
  end
    
  def test_remove
    repo = BasicUserRepository.new
    info_in = create_user_info
    repo.register(info_in)
    info_out = repo.get(Id)
    assert_equal(Id, info_out[:id])
    assert_equal(info_in[:name][:first], info_out[:name][:first])
    assert_equal(info_in[:name][:last], info_out[:name][:last])
    repo.remove(Id)
    info_out = repo.get(Id)
    assert_nil(info_out)
  end
    
  def test_update
    repo = BasicUserRepository.new
    info_in = create_user_info
    repo.register(info_in)
    info_out = repo.get(Id)
    assert_equal(Id, info_out[:id])
    assert_equal(info_in[:name][:first], info_out[:name][:first])
    assert_equal(info_in[:name][:last], info_out[:name][:last])
    info_in[:name][:first] = 'Steve'
    repo.update(info_in)
    info_out = repo.get(Id)
    assert_equal(Id, info_out[:id])
    assert_equal(info_in[:name][:first], info_out[:name][:first])
    assert_equal(info_in[:name][:last], info_out[:name][:last])
  end
    
  def test_get
    repo = BasicUserRepository.new
    info_in = create_user_info
    repo.register(info_in)
    info_out = repo.get(Id)
    assert_equal(Id, info_out[:id])
    assert_equal(info_in[:name][:first], info_out[:name][:first])
    assert_equal(info_in[:name][:last], info_out[:name][:last])
  end
  
end