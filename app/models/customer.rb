class Customer < ActiveRecord::Base
	has_many :orders
	accepts_nested_attributes_for :orders

	scope :sorted, lambda { order("first_name ASC") }
	scope :visible, lambda { where(:visible => true) }
	scope :invisible, lambda { where(:visible => false) }
	scope :newest_first, lambda { order("customers.created_at DESC")}
	scope :search, lambda {|query|
	}
end
