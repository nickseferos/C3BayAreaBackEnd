class CreateCultures < ActiveRecord::Migration[5.0]
  def change
    create_table :cultures do |t|
      t.string :header
      t.text :expansion

      t.timestamps
    end
  end
end
