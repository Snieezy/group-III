class User < ApplicationRecord

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :name, :surname, :city, presence: true
  validates :surname, :surname format: /[A-Z][a-z]*/
end
