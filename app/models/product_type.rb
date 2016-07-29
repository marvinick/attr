class ProductType < ApplicationRecord
  has_many :fields, class_name: "ProductField"
  accept_nested_attributes_for :fields, allow_destroy: true
end
