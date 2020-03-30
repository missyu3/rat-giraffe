class Station < ApplicationRecord
  belongs_to :property
  with_options presence: true,if: :input_item?  do |item|
    item.validates :name
    item.validates :route
    item.validates :walk_minutes
  end

  def input_item?
    if name.blank? && route.blank? && walk_minutes.blank?
      false
    else
      name.blank? || route.blank? || walk_minutes.blank?
    end      
  end

end