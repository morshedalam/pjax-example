class Product < ActiveRecord::Base
  validates :title, :price, :quantity, :presence => true
  validates :price, :quantity, :numericality => true
  validates_numericality_of :quantity, :only_integer => true
end
