class CreateOrganizations < ActiveRecord::Migration[7.0]
  def change
    create_table :organizations do |t|
      t.string :name, null: false
      t.string :country
      t.string :city
      t.string :address
      t.timestamps
    end
  end
end
