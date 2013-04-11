class Student
  include Mongoid::Document
  field :name, type: String
  field :uni, type: String
  has_and_belongs_to_many :courses
end
