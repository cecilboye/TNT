class CreateCustomers < ActiveRecord::Migration
  def up
    create_table :customers do |t|
  	t.string "first_name"
  	t.string "last_name"
  	t.string "city"
  	t.string "address"
  	t.integer "zip_code"
  	t.string "email"

    t.timestamps null: false
    end
end
  def down
  	drop_table :customers
  end
end