class CreateCollections < ActiveRecord::Migration[5.2]
  def change
    create_table :collections do |t|
      t.integer :account_number
      t.string :lname
      t.string :fname
      t.float :money_due
      t.float :money_paid
      t.float :total_due
      t.string :phone
      t.string :phone2
      t.string :phone3
      t.string :notes
      t.integer :practice_id

      t.timestamps
    end
  end
end
