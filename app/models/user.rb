class User < ActiveRecord::Base
  attr_accessible :name, :vote_count

  has_many :evaluations, class_name: "RSEvaluation", as: :source

  has_reputation :votes, source: {reputation: :votes, of: :charities}, aggregated_by: :sum

  def voted_for?(charity)
  	evaluations.where(target_type: charity.class, target_id: charity.id).present?
  end
end
