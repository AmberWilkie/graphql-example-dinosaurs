class CreateBones < ActiveRecord::Migration[5.2]
  def change
    create_table :bones do |t|
      t.references :researcher, foreign_key: true
      t.references :dinosaur, foreign_key: true
      t.string :location
      t.date :date_found

      t.timestamps
    end
  end
end
