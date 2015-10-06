require "minitest/autorun"

class TestMeme < MiniTest::Test
  def test_course_linter
    output = `bundle exec yaml-lint courses`
    puts output
    assert_equal true, output.match("error").nil?
  end

  def test_course_schema
    output = `bundle exec kwalify -lf schema_course.yml courses/*`
    puts output
    assert_equal true, output.match("INVALID").nil?
  end

  def test_module_linter
    output = `bundle exec yaml-lint modules`
    puts output
    assert_equal true, output.match("error").nil?
  end

  def test_module_schema
    output = `bundle exec kwalify -lf schema_module.yml modules/*`
    puts output
    assert_equal true, output.match("INVALID").nil?
  end
end
