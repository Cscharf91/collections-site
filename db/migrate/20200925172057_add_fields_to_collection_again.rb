class AddFieldsToCollectionAgain < ActiveRecord::Migration[5.2]
  def change
    add_column :collections, :address, :string
    add_column :collections, :address2, :string
    add_column :collections, :city, :string
    add_column :collections, :state, :string
    add_column :collections, :zip, :string
  end
end
