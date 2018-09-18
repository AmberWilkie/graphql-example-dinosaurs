Types::QueryType = GraphQL::ObjectType.define do
  name "Query"

  field :dinosaur, Types::DinosaurType do
    description 'Retrieve a dinosaur by id'
    argument :id, !types.ID, 'The ID of the dino to retrieve'
    resolve ->(obj, args, ctx) {
      Dinosaur.find(args[:id])
    }
  end

  field :dinosaurs, types[Types::DinosaurType] do
    description 'Retrieve dinosaurs'
    argument :name, types.String, 'The name of the dino(s) to retrieve'

    resolve ->(obj, args, ctx) {
      if args[:name]
        Dinosaur.where(name: args[:name])
      else
        Dinosaur.all
      end
    }
  end
end
