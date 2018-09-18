Types::ResearcherType = GraphQL::ObjectType.define do
  name 'ResearcherType'
  description 'Indiana Jones and co.'
  field :id, !types.ID, 'The ID of the researcher'
  field :name, types.String, 'The researcher name'
end
