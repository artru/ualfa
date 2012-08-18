class Catalog < ActiveRecord::Base
  attr_accessible :name
  has_many :categories
end
