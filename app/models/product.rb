class Product < ActiveRecord::Base
  has_many :ordered_products
  has_many :orders, :through => :ordered_products

  def next_record_id
    Product.limit(1).offset(self.id).first.try(:id)
  end
end
