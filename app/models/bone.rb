class Bone < ApplicationRecord
  belongs_to :researcher, required: false
  belongs_to :dinosaur, required: false
end
