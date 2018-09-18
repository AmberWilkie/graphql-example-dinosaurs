class AddResearcherToDinosaurs < ActiveRecord::Migration[5.2]
  def change
    add_reference :dinosaurs, :researcher, foreign_key: true
  end
end
