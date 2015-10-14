require 'test_helper'

class ChabudaiTest < ActiveSupport::TestCase
  test "truth" do
    assert_kind_of Module, Chabudai
  end

  test "hoge" do
    MyChabudai = Chabudai::Tableless.attribute(:abc, :ghi)
    subject = MyChabudai.new(abc: 'def', ghi: 'jkl')
    
    assert_equal MyChabudai.attribute_names, [:abc, :ghi]
    assert_equal subject.abc, 'def'
    assert_equal subject.ghi, 'jkl'
    assert_equal subject.persisted?, false
  end
end
