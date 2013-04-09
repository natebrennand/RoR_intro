class Lecture
  include Mongoid::Document
  field :class_time, type: DateTime
  field :subject, type: String
  field :attendance, type: Integer
end
