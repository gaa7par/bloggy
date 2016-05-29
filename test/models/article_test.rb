require 'test_helper'

class ArticleTest < ActiveSupport::TestCase

  def setup
    @article = Article.new(title: "Example Title",
    text: "This is an example text. It's really short but it's enough, isn't it? I'm not your father.")
  end

  test "should be valid" do
    assert @article.valid?
  end

  test "title should be present" do
    @article.title = ""
    assert_not @article.valid?
  end

  test "text should be present" do
    @article.text = ""
    assert_not @article.valid?
  end

  test "title should not be too short" do
    @article.title = "a" * 2
    assert_not @article.valid?
  end

  test "text should not be too short" do
    @article.text = "a" * 79
    assert_not @article.valid?
  end

  test "title should not be too long" do
    @article.title = "a" * 31
    assert_not @article.valid?
  end
end
