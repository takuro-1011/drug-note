class Drug < ApplicationRecord
  belongs_to :user
  has_one_attached :image
  
  
  with_options presence: true do
    validates :drug_name
    validates :hospital
    validates :effect
    validates :day_id
    validates :capa_id, numericality: { other_than: 1 } 
    validates :image
  end

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :capa
end
