class Lecture
  include Mongoid::Document
  field :subject, type: String
  field :when, type: DateTime
  belongs_to :course
  has_many :uploads
  has_many :assignments
end
