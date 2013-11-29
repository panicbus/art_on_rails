class Artist < ActiveRecord::Base
  attr_accessible :dob, :image, :name, :nationality, :period
  has_many :paintings
end

