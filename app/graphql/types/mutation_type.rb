module Types
  class MutationType < Types::BaseObject
    field :remove_article, mutation: Mutations::RemoveArticle
    field :createArticle, mutation: Mutations::CreateArticle
  end
end
