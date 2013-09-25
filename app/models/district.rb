class District < ActiveRecord::Base
  attr_accessible :districtName, :districtSynomyms

  has_many :restaurants, dependent: :destroy
end
