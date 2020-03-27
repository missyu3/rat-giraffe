class Property < ApplicationRecord
  has_many :stations , dependent: :destroy
  with_options presence: true do
    validates :name
    validates :rent
    validates :address
    validates :age
    validates :remark
  end
end
