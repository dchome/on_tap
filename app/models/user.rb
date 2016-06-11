class User < ActiveRecord::Base
  has_many :itineraries, foreign_key: :creator_id
  has_many :activities, through: :itineraries

  has_secure_password

  validates :username, :email, presence: true
  validates :username, :email, presence: true
  validates_format_of :email, with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i
  validates :email, confirmation: true
  validates :email_confirmation, presence: true
  validates :zip, numericality: {only_integer: true, less_than: 100000, message: "Must be a valid US ZIP code (5 digits)"}

end
