class AddSpeciesToDinosaurs < ActiveRecord::Migration[5.2]
  def change
    add_column :dinosaurs, :species, :string
  end
end
