module Mutations
  class CreateArticle < GraphQL::Schema::RelayClassicMutation
    # TODO: define return fields
    # field :post, Types::PostType, null: false
    field :article, Types::ArticleType, null: false
    # TODO: define arguments
    # argument :name, String, required: true
    argument :title, String, required: true
    argument :description, String, required: true
    # TODO: define resolve method
    # def resolve(name:)
    #   { post: ... }
    # end
    def resolve(title:, description:)
      article = Article.create!(title: title, description: description)
      {
        article: article
      }
    end
  end
end
