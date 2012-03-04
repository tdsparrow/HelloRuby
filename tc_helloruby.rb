require './helloruby'
require 'test/unit'

class TestHelloRuby < Test::Unit::TestCase
  def test_say_hello
    assert_equal p('hello Ruby world'), 'hello Ruby world'
  end

  # this case is platform dependent
  def test_to_ruby
    assert_equal p("hello #{Ruby} world"), 'hello fantastic Ruby world'
  end

  def test_everything_is_object
    assert_equal 1.is, Fixnum
    assert_equal 'a'.is, String
    assert_equal "a".is, String
    assert_equal Ruby.is, String
  end

  def test_yes_i_mean_everything
    assert_equal 1.is.is, Class
    assert_equal 1.is.is.is, Class
    assert_equal 'a'.is.is, Class
  end

  def test_everything_is_open
    xml = 'xml'
    assert_raise NoMethodError do
      xml.sucks?
    end

    def xml.sucks?; true; end
    assert xml.sucks?
  end

  def test_duck_typing
    def my_next(num_like)
      num_like.next
    end

    assert_equal my_next(1), 2
    assert_equal my_next('a'), 'b'
  end

end


