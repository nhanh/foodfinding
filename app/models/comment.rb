class Comment < ActiveRecord::Base
  attr_accessible :Description, :Name, :Title, :dateComment, :rateNumber, :type_id

  belongs_to :restaurant
  belongs_to :fooddrink
end
