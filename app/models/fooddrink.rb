class Fooddrink < ActiveRecord::Base
  attr_accessible :Price, :Type, :category_id, :dateUpload, :fdImage, :fdName, :rateNumber, :restaurant_id

  belongs_to :category
  belongs_to :restaurant

  has_many :comments, dependent: :destroy
end
