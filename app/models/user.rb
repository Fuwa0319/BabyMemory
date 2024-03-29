class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :parent
  belongs_to :gender
  has_many   :memories
  has_many   :temperatures
  has_many   :milks
  has_many   :pees
  has_many   :poops

  with_options presence: true do
    validates :baby_name, format: { with: /\A[ぁ-んァ-ヶ一-龥々ー]+\z/, message: 'is invalid. Input full-width characters' }
    validates :baby_name_kana, format: { with: /\A[ァ-ヶー]+\z/, message: 'is invalid. Input full-width katakana characters' }
    validates :birthday
  end

  validates :gender_id,     numericality: { other_than: 1, message: "can't be blank" }
  validates :parent_id,     numericality: { other_than: 1, message: "can't be blank" }
  validates :password,      format: { with: /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]+\z/i, message: 'is invalid. Include both letters and numbers' }

end
