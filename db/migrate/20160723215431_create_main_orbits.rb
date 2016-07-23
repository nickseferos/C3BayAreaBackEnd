class CreateMainOrbits < ActiveRecord::Migration[5.0]
  def change
    create_table :main_orbits do |t|
      t.binary :image
      t.string :alt_description

      t.timestamps
    end
  end
end
