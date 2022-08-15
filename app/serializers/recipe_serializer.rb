class RecipeSerializer < ActiveModel::Serializer
  attributes :id, :title, :instructions, :text, :minutes_to_complete, :integer
end
