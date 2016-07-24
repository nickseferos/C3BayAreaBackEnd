class CreateVerses < ActiveRecord::Migration[5.0]
  def change
    create_table :verses do |t|
      t.text :verse
      t.string :reference

      t.timestamps
    end
  end
end
