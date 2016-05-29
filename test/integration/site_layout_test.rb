require 'test_helper'

class SiteLayoutTest < ActionDispatch::IntegrationTest
  test "layout links" do
    get root_path
    assert_template 'welcome/index'
    assert_select "a[href=?]", articles_path

    get articles_path
    assert_template 'articles/index'
    assert_select "a[href=?]", new_article_path

    get new_article_path
    assert_template 'articles/new'
    assert_select "a[href=?]", articles_path
  end
end
