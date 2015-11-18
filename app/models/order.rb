class Order < ActiveRecord::Base

	belongs_to :customer

	accepts_nested_attributes_for :customer

	scope :visible, lambda { where(:visible => true) }
	scope :invisible, lambda { where(:visible => false) }
	scope :sorted, lambda { sorted("orders") }
	scope :newest_first, lambda { order("orders.created_at DESC")}
	scope :search, lambda {|query|
		where(["name LIKE ?", "%#{query}%"])}
end
