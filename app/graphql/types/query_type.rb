module Types
  class QueryType < Types::BaseObject
    field :allArticles, [ArticleType], null: false
    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    # TODO: remove me
    #field :article, ArticleType, null: false
    def all_articles
      Article.all
    end
  end
end
