class Painting < ActiveRecord::Base
  attr_accessible :image, :style, :title, :year
  belongs_to :artists
end
