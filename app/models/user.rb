class User < ApplicationRecord
  # Deviseのモジュール（認証関連）
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # アソシエーション
  has_many :prototypes, dependent: :destroy
  has_many :comments, dependent: :destroy

  # バリデーション
  validates :name, presence: true
  validates :profile, presence: true
  validates :occupation, presence: true
  validates :position, presence: true
end