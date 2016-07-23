class CreateTiSpecificOrbits < ActiveRecord::Migration[5.0]
  def change
    create_table :ti_specific_orbits do |t|
      t.binary :image
      t.string :alt_description

      t.timestamps
    end
  end
end
