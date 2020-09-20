class CreateBillers < ActiveRecord::Migration[5.2]
  def change
    create_table :billers do |t|
      t.string :company_name
      t.string :name
      t.string :email
      t.string :phone
      t.string :amount_owed
      t.string :number_of_accounts
      t.string :time_outstanding
      t.string :industry
      t.text :details

      t.timestamps
    end
  end
end
