class Lecture
  include Mongoid::Document
  field :subject, type: String
  field :when, type: DateTime
end
