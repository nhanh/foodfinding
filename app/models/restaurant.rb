class Restaurant < ActiveRecord::Base
  attr_accessible :Address, :Latitude, :Longitude, :district_id, :rateNumber, :restImage, :restName, :restType

  has_many :fooddrinks, dependent: :destroy
  has_many :comments, dependent: :destroy

  belongs_to :district
end
