class Category < ActiveRecord::Base
  attr_accessible :cateName, :cateType

  has_many :fooddrinks, dependent: :destroy
end
