class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
  validate :allergy
  with_options presence: true do
    validates :name, format: { with: /\A[ぁ-んァ-ン一-龥]/ }
    validates :name_kana, format: { with: /\A[ァ-ヶー－]+\z/ }
    validates :phone_number, format: { with: /\A\d{11}\z/ }
    validates :password, format: { with: /\A[a-z0-9]+\z/ }
    validates :birthday
    validates :gender
  end
  
  has_many :drugs
  enum gender: { man: 1, woman: 2 }
end