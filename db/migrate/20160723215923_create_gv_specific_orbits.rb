class CreateGvSpecificOrbits < ActiveRecord::Migration[5.0]
  def change
    create_table :gv_specific_orbits do |t|
      t.binary :image
      t.string :alt_description

      t.timestamps
    end
  end
end
