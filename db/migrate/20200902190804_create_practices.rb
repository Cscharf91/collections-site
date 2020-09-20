class CreatePractices < ActiveRecord::Migration[5.2]
  def change
    create_table :practices do |t|
      t.string :name
      t.string :code
      t.string :address
      t.string :city
      t.string :state
      t.string :zip
      t.string :phone
      t.string :dr_type

      t.timestamps
    end
  end
end
