class Station < ApplicationRecord
  with_options presence: true do
    validates :name
    validates :route
    validates :walk_minutes
    validates :property_id
  end
end