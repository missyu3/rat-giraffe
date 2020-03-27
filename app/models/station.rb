class Station < ApplicationRecord
  belongs_to :property
  with_options presence: true do
    validates :name
    validates :route
    validates :walk_minutes
  end
end