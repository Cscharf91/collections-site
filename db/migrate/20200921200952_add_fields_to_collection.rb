class AddFieldsToCollection < ActiveRecord::Migration[5.2]
  def change
    add_column :collections, :dob, :date
  end
end
