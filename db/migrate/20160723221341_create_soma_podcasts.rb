class CreateSomaPodcasts < ActiveRecord::Migration[5.0]
  def change
    create_table :soma_podcasts do |t|
      t.binary :media
      t.string :title
      t.string :speaker
      t.string :series
      t.date :date
      t.text :description

      t.timestamps
    end
  end
end
