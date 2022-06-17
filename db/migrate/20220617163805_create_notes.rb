class CreateNotes < ActiveRecord::Migration[6.1]
  def change
    create_table :notes do |t|
      t.integer :recipe_id
      t.string :note

      t.timestamps
    end
  end
end
