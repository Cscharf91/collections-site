class CreateNotes < ActiveRecord::Migration[5.2]
  def change
    create_table :notes do |t|
      t.string :message
      t.integer :collection_id
      t.timestamps
    end
  end
end
