require 'test_helper'

class Mutations::CreateArticleTest < ActiveSupport::TestCase
  test 'create a new article' do
    article = Article.new
    article.description = "Description"
    article.title = "Title"
    article.save

    assert article.persisted?
    assert_equal article.description, 'Description'
    assert_equal article.title, 'Title'
  end
end