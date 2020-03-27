class Property < ApplicationRecord
  has_many :stations , dependent: :destroy
  accepts_nested_attributes_for :stations
  with_options presence: true do
    validates :name
    validates :rent
    validates :address
    validates :age
    validates :remark
  end
end
