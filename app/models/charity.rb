class Charity < ActiveRecord::Base
  attr_accessible :description, :image_url, :name

  has_reputation :votes, source: :user, aggregated_by: :sum
end
