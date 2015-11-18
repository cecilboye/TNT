class CreateOrders < ActiveRecord::Migration
  
  def up
    create_table :orders do |t|
    t.integer "customer_id"
    t.string "pakket"
  	t.datetime "datum_bestelt"
  	t.boolean "verstuurt", :default => false
  	t.datetime "datum_verstuurt"
  	t.boolean "tweede_exemplaar"
  	t.integer "packettracer_ID", :limit => 3
  	t.timestamps null: false
  end
  add_index("orders","customer_id") #Foreignkey
end

     def down
     	drop_table :orders
     end
  
end
