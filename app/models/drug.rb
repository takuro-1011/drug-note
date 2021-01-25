class Drug < ApplicationRecord
  belongs_to :user
  has_one_attached :image

  with_options presence: true do
    validates :drug_name
    validates :hospital
    validates :effect
    validates :day_id
  end
end
