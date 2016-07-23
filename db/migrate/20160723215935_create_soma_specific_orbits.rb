class CreateSomaSpecificOrbits < ActiveRecord::Migration[5.0]
  def change
    create_table :soma_specific_orbits do |t|
      t.string :image
      t.string :alt_description

      t.timestamps
    end
  end
end
