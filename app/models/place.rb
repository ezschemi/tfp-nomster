class Place < ApplicationRecord
  belongs_to :user
  has_many :comments
  has_many :photos
  
  validates :name, presence: true, length: { minimum: 3, maximum: 100 } 
  validates :address, presence: true, length: { minimum: 10, maximum: 100 } 
  validates :description, presence: true, length: { minimum: 20, maximum: 500 } 


  geocoded_by :address
  after_validation :geocode
end
