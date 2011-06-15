#!/usr/bin/env ruby
require File.expand_path(File.join(File.dirname(__FILE__), *%w{.. test_helper}))

class UtilTest < Test::Unit::TestCase
  def test_to_hash
    assert_nothing_raised {
      hsh = Haml::Util.to_hash([[:foo, 'bar'], [:baz, 'bang']])
      assert_equal('bar', hsh[:foo])
      assert_equal('bang', hsh[:baz])
    }
  end
end
