class User < ActiveRecord::Base
  attr_accessible :name

  has_many :evaluations, class_name: "RSEvaluation", as: :source
end
