require "test_helper"

class ReferenceTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::Reference::VERSION
  end

  def test_check_generating_code
    reference = Reference::Builder.new.generate
    assert reference
  end

  def test_check_generating_code_not_empty_string
    reference = Reference::Builder.new.generate
    assert reference != ''
  end

  def test_check_generating_uniq_code
    reference1 = Reference::Builder.new.generate
    reference2 = Reference::Builder.new.generate
    assert reference1 != reference2
  end
end
