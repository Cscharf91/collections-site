class AddSsnToCollections < ActiveRecord::Migration[5.2]
  def change
    add_column :collections, :ssn, :string
  end
end
