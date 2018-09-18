Types::DinosaurType = GraphQL::ObjectType.define do
  name 'DinosaurType'
  description 'Extinct fauna that turned into birds'
  field :id, !types.ID, 'The ID of the dinosaur'
  field :name, types.String, 'The dino name'
  field :species, types.String, 'The dino species'
  field :scientific_name, types.String do
    resolve ->(obj, args, ctx) {
      endings = %w[adopus ocus saurus il]
      "#{obj.species}-#{endings.sample}"
    }
  end

  field :researcher, Types::ResearcherType, 'The researcher responsible for the dinosaur'
end
