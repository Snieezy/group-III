class User < ApplicationRecord
  has_many :events

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :name, presence: true
  validates :surname, presence: true
  validates :city, presence: true
  validates :name, format: /[A-Z][a-z]*/
  validates :surname, format: /[A-Z][a-z]*/
end
