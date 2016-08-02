class Ship < ApplicationRecord
  has_many :members
  accepts_nested_attributes_for :crew_members
end
