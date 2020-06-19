module Mutations
  class RemoveArticle < GraphQL::Schema::RelayClassicMutation

    field :article, Types::ArticleType, null: false

    argument :id, ID, required: true

    def resolve(id:)
      article = Article.find(id)
      article.destroy!
      { article: article }
    end
  end
end
