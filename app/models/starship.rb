class Starship < ApplicationRecord
  has_many :crew_members
  accepts_nested_attributes_for :crew_members, allow_destroy: true

end
