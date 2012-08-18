class Category < ActiveRecord::Base
  attr_accessible :catalog_id, :name
  belongs_to :catalog
end
