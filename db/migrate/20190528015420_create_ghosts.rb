class CreateGhosts < ActiveRecord::Migration[5.2]
  def change
    create_table :ghosts do |t|
      t.string :name
      t.string :picture
      t.text :description

      t.timestamps
    end
  end
end
